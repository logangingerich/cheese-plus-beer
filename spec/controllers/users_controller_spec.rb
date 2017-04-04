require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end

  let(:user) { User.create!(email: "user@bloccit.com", password: "password", password_confirmation: "password") }
  let(:current_user) { user }

end
