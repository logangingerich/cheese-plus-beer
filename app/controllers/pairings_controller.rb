class PairingsController < ApplicationController
  def new
    @pairing = Pairing.new
  end

  def edit
    @pairing = Pairing.find(params[:id])
  end

  def show
    @pairing = Pairing.find(params[:id])
  end

  def update
    @pairing = Pairing.find(params[:id])
    @pairing.notes = params[:pairing][:notes]

    if @pairing.save
      redirect_to :back
    else
      redirect_to :back
    end
  end
end
