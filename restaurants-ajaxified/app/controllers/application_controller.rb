class ApplicationController < ActionController::Base
  before_action :set_counter

  private

  def set_counter
    @restaurant_count = Restaurant.count
  end
end
