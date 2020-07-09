class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    respond_to do |format|
      format.html
      format.json { render json: { restaurants: @restaurants } }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end
