require 'rails_helper'

RSpec.describe Pairing, type: :model do
  let(:cheese) { Cheese.create!(name: "Cheddar") }
  let(:beer) { Beer.create!(name: "Ale") }
  let(:pairing) { Pairing.create!(cheese: cheese, beer: beer) }

  describe "attributes" do
    it "has name attribute" do
      expect(pairing).to have_attributes(cheese: cheese, beer: beer)
    end
    it { should have_many(:votes) }
    it { should have_many(:likes) }
    it { should belong_to(:cheese) }
    it { should belong_to(:beer) }
    it { should belong_to(:user) }
  end

  describe "voting" do
    before do
      3.times { pairing.votes.create!(value: 1) }
      2.times { pairing.votes.create!(value: -1) }
      @up_votes = pairing.votes.where(value: 1).count
      @down_votes = pairing.votes.where(value: -1).count
    end

    describe "#up_votes" do
      it "counts the number of votes with value = 1" do
        expect( pairing.up_votes ).to eq(@up_votes)
      end
    end

    describe "#down_votes" do
      it "counts the number of votes with value = -1" do
        expect( pairing.down_votes ).to eq(@down_votes)
      end
    end

    describe "#points" do
      it "returns the sum of all down and up votes" do
        expect( pairing.points ).to eq(@up_votes - @down_votes)
      end
    end
  end
end
