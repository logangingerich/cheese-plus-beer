class BeersController < ApplicationController
  def index
    @beers = Beer.all.order('name ASC')
    if params[:search]
      @beers = Beer.search(params[:search]).order("name ASC")
    else
      @beers = Beer.all.order("name ASC")
    end
  end

  def show
    @beer = Beer.find(params[:id])
    @pairings = @beer.pairings.order(rank: :asc)
  end

  def new
  end

  def edit
  end
end
