class UsersController < ApplicationController
  def show
    @liked_pairings = Like.where(user_id: current_user.id)
    @custom_pairings = CustomPairing.where(user_id: current_user.id)
    @custom_pairing = CustomPairing.new
  end
end
