class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # Restaurant.create(restaurant_params)
    # redirect_to restaurants_path
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
      flash[:notice] = 'Restaurant created'
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

 private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
