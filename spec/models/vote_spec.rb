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

end
