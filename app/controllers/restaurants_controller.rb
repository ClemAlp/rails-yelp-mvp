class RestaurantsController < ApplicationController

  before_action :find_restau, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restau_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def show
  end

  private

  def find_restau
    @restaurant = Restaurant.find(params[:id])
  end

  def restau_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
