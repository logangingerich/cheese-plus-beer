require 'rails_helper'

RSpec.describe LikesController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  let(:my_user) { User.create!(email: 'example@example.com', password: 'password', password_confirmation: 'password') }
  let(:my_pairing) { Pairing.create!(cheese: "Cheddar", beer: 'Ale', user: my_user) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
