class ProfilesController < ApplicationController
  def my_cars
    @cars = current_user.cars
  end
end
