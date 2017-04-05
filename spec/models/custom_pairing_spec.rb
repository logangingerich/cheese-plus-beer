require 'rails_helper'

RSpec.describe CustomPairing, type: :model do
  let(:custom_pairing) { CustomPairing.create!(cheese: 'cheese', beer: 'beer') }

  describe "attributes" do
    it "has name attribute" do
      expect(custom_pairing).to have_attributes(cheese: 'cheese', beer: 'beer')
    end
    it { should belong_to(:user) }
  end
end
