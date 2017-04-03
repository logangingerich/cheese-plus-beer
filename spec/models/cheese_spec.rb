require 'rails_helper'

RSpec.describe Cheese, type: :model do
  let(:cheese) { Cheese.create!(name: "Cheddar") }

  #Validations
  it { should validate_presence_of(:name) }

  describe "attributes" do
    it "has name attribute" do
      expect(cheese).to have_attributes(name: "Cheddar")
    end
    it { should have_many(:pairings) }
    it { should have_many(:beers).through(:pairings) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
end
