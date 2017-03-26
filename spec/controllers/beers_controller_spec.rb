require 'rails_helper'

RSpec.describe BeersController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  let(:my_beer) { Beer.create!(name: "Ale") }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_beer] to @beers" do
      get :index
      expect(assigns(:beers)).to eq([my_beer])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_beer.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, {id: my_beer.id}
      expect(response).to have_http_status(:success)
    end
  end

end
