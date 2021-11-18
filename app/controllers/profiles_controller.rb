class ProfilesController < ApplicationController
  def my_rentings
    @rentings = current_user.rentings
  end
end
