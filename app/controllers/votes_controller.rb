class VotesController < ApplicationController
  def up_vote
    update_vote(1)
    redirect_to :back
  end

  def down_vote
    update_vote(-1)
    redirect_to :back
  end

  private
  def update_vote(new_value)
    @pairing = Pairing.find(params[:pairing_id])
    @vote = @pairing.votes.where(user_id: current_user.id).first

    if @vote
      @vote.update_attribute(:value, new_value)
    else
      @vote = current_user.votes.create(value: new_value, pairing: @pairing)
    end
  end
end
