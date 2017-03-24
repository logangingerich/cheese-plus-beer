require 'rails_helper'

RSpec.describe Cheese, type: :model do
  let(:cheese) { Cheese.create!(name: "Cheddar") }

  describe "attributes" do
    it "has name attribute" do
      expect(cheese).to have_attributes(name: "Cheddar")
    end
  end
end
