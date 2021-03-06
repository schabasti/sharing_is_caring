class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @cars = Car.all
  end

  def show
    id = params[:id]
    @car = Car.find(id)
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to my_cars_path, notice: "Your car has been deleted."
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :seats, :description, :photo)
  end
end
