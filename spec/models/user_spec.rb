require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@bloccit.com", password: "password", password_confirmation: "password") }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to allow_value("user@bloccit.com").for(:email) }
  it { is_expected.to have_many(:votes) }
  it { is_expected.to have_many(:pairings) }
  it { is_expected.to have_many(:likes) }

  it { is_expected.to validate_presence_of(:password) }
  describe "attributes" do
    it "should have an email attribute" do
      expect(user).to have_attributes(email: user.email)
    end
  end

end
