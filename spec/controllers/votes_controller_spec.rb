require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  let(:cheese) { Cheese.create!(name: "Cheddar") }
  let(:beer) { Beer.create!(name: "Ale") }
  let(:pairing) { Pairing.create!(cheese: cheese, beer: beer) }
  let(:user) { User.create!(email: "exampl@example.com", password: "password", password_confirmation: "password") }
  before { allow(controller).to receive(:current_user) { user } }

  setup do
    @request.env['HTTP_REFERER'] = 'http://test.com/sessions/new'
  end

  describe "POST up_vote" do
    it "the users first vote increases number of post votes by one" do
      votes = pairing.votes.count
      post :up_vote, pairing_id: pairing.id
      expect(pairing.votes.count).to eq(votes + 1)
    end

    it "the users second vote does not increase the number of votes" do
      post :up_vote, pairing_id: pairing.id
      votes = pairing.votes.count
      post :up_vote, pairing_id: pairing.id
      expect(pairing.votes.count).to eq(votes)
    end

    it "increases the sum of post votes by one" do
      points = pairing.points
      post :up_vote, pairing_id: pairing.id
      expect(pairing.points).to eq(points + 1)
    end
  end

  describe "POST down_vote" do
    it "the users first vote increases number of post votes by one" do
      votes = pairing.votes.count
      post :down_vote, pairing_id: pairing.id
      expect(pairing.votes.count).to eq(votes + 1)
    end

    it "the users second vote does not increase the number of votes" do
      post :down_vote, pairing_id: pairing.id
      votes = pairing.votes.count
      post :down_vote, pairing_id: pairing.id
      expect(pairing.votes.count).to eq(votes)
    end

    it "decreases the sum of post votes by one" do
      points = pairing.points
      post :down_vote, pairing_id: pairing.id
      expect(pairing.points).to eq(points - 1)
    end
  end
end
