class CustomPairingsController < ApplicationController
  def new
    @custom_pairing = CustomPairing.new
  end

  def create
    @custom_pairing = CustomPairing.new
    @custom_pairing.user = current_user
    @custom_pairing.beer = params[:custom_pairing][:beer]
    @custom_pairing.cheese = params[:custom_pairing][:cheese]
    if @custom_pairing.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def show
    @custom_pairing = CustomPairing.find(params[:id])
  end

  def update
    @custom_pairing = CustomPairing.find(params[:id])
    @custom_pairing.notes = params[:custom_pairing][:notes]

    if @custom_pairing.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @custom_pairing = CustomPairing.find(params[:id])

    if @custom_pairing.destroy
      redirect_to :back
    else
      redirect_to :back
    end
  end
end
