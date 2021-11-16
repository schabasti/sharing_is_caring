class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    id = params[:id]
    @car = Car.find(id)
  end
end
