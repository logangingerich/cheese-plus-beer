require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  let(:user) { User.create!(email: "user@example.com", password: "password", password_confirmation: "password") }
  before { allow(controller).to receive(:current_user) { user } }

  it "returns http success" do
    get :show, {id: user.id}
    expect(response).to have_http_status(:success)
  end

  it "renders the #show view" do
    get :show, {id: user.id}
    expect(response).to render_template :show
  end
end
