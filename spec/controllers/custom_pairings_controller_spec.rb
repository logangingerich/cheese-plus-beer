require 'rails_helper'

RSpec.describe CustomPairingsController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end

  let(:custom_pairing) { CustomPairing.create!(cheese: "cheese", beer: "beer") }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
