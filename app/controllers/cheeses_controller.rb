class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all.order('name ASC')
    if params[:search]
      @cheeses = Cheese.search(params[:search]).order("name DESC")
    else
      @cheeses = Cheese.all.order("name ASC")
    end
  end

  def show
    @cheese = Cheese.find(params[:id])
    @pairings = @cheese.pairings.order(rank: :desc)
  end

  def new
  end

  def edit
  end
end
