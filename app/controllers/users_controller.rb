class UsersController < ApplicationController
  def show
    @liked_pairings = Like.where(user_id: current_user.id)
    @pairing = Pairing.new
    @pairing.user = current_user
  end
end
