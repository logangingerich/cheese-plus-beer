class LikesController < ApplicationController
  def index
  end

  def create
    pairing = Pairing.find(params[:pairing_id])
    like = current_user.likes.build(pairing: pairing)
    if like.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @pairing = Pairing.find(params[:pairing_id])
    like = current_user.likes.find(params[:id])

    if like.destroy
      redirect_to :back
    else
      redirect_to :back
    end
  end
end
