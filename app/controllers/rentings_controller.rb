class RentingsController < ApplicationController
  def show
    @car = Car.find(params[:car_id])
    @renting = Renting.find(params[:id])
  end
end
