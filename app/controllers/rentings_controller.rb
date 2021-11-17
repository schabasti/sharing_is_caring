class RentingsController < ApplicationController
  before_action :set_car, only: %i[new create]

  def show
    @car = Car.find(params[:car_id])
    @renting = Renting.find(params[:id])
  end

  def new
    @renting = Renting.new
  end

  def create
    @renting = Renting.new(renting_params)
    @renting.user = current_user
    @renting.car = @car
    if @renting.save
      redirect_to car_renting_path(@car, @renting)
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def renting_params
    params.require(:renting).permit(:date)
  end
end
