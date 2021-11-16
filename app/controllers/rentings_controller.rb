class RentingsController < ApplicationController
  def show
     @rentings = Renting.find(params[:id])
  end
end
