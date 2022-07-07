class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: [:show]

  # GET "restaurants"
  def index
    @restaurants = Restaurant.all
  end

  # GET "restaurants/new"
  def new
    @restaurant = Restaurant.new
  end

  # POST "restaurants"
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET "restaurants/:id"
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :reviews )
  end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end
