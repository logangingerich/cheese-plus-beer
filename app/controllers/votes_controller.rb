class VotesController < ApplicationController
  def up_vote
    @pairing = Pairing.find(params[:pairing_id])
    @vote = @pairing.votes.where(user_id: current_user.id).first

    if @vote
      @vote.update_attribute(:value, 1)
    else
      @vote = current_user.votes.create(value: 1, pairing: @pairing)
    end

    redirect_to :back
  end

  def down_vote
    @pairing = Pairing.find(params[:pairing_id])
    @vote = @pairing.votes.where(user_id: current_user.id).first

    if @vote
      @vote.update_attribute(:value, -1)
    else
      @vote = current_user.votes.create(value: -1, pairing: @pairing)
    end

    redirect_to :back
  end
end
