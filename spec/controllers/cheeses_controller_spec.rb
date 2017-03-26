require 'rails_helper'

RSpec.describe CheesesController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end

  let(:my_cheese) { Cheese.create!(name: "Cheddar") }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_cheese] to @cheeses" do
      get :index
      expect(assigns(:cheeses)).to eq([my_cheese])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_cheese.id}
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
      get :edit, {id: my_cheese.id}
      expect(response).to have_http_status(:success)
    end
  end

end
