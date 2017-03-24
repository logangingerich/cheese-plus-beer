require 'rails_helper'

RSpec.describe Beer, type: :model do
  let(:beer) { Beer.create!(name: "IPA") }

  describe "attributes" do
    it "has name attribute" do
      expect(beer).to have_attributes(name: "IPA")
    end
  end
end
