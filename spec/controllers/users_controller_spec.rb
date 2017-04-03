require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
