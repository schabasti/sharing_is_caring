class ProfilesController < ApplicationController

  def my_cars
    @cars = current_user.cars
  end

  def my_rentings
    @rentings = current_user.rentings
  end
end
