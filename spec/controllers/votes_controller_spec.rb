require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end

end
