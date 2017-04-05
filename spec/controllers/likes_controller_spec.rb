require 'rails_helper'

RSpec.describe LikesController, type: :controller do
  it { should use_before_action(:authenticate_user!) }

  #before :each do
     #controller.class.skip_before_action :authenticate_user!
  #end
  let(:my_user) { User.create!(email: 'example@example.com', password: 'password', password_confirmation: 'password') }
  let(:cheese) { Cheese.create!(name: "Cheddar") }
  let(:beer) { Beer.create!(name: "Ale") }
  let(:my_pairing) { Pairing.create!(cheese: cheese, beer: beer, user: my_user) }
  let(:like) { Like.create!(pairing_id: my_pairing.id, user_id: my_user.id) }
  before { allow(controller).to receive(:current_user) { my_user } }

end
