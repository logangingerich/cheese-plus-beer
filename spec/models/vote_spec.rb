require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:cheese) { Cheese.create!(name: "Cheddar") }
  let(:beer) { Beer.create!(name: "Ale") }
  let(:pairing) { Pairing.create!(cheese: cheese, beer: beer) }
  let(:user) { User.create!(email: "exampl@example.com", password: "password", password_confirmation: "password") }
  let(:vote) { Vote.create!(value: 1, pairing: pairing, user: user) }

  it { is_expected.to belong_to(:pairing) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:value) }
  it { is_expected.to validate_inclusion_of(:value).in_array([-1, 1]) }

  describe "update_pairing callback" do
    it "triggers update_pairing on save" do
      expect(vote).to receive(:update_pairing).at_least(:once)
      vote.save!
    end

    it "#update_pairing should call update_rank on pairing" do
      expect(pairing).to receive(:update_rank).at_least(:once)
      vote.save!
    end
  end
end
