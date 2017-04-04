require 'rails_helper'

RSpec.describe PairingsController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
