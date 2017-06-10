class UsersController < ApplicationController
  # User profile
  def show
    @user = User.find(params[:id])
    @trips = @user.trips
  end

  # Trip profile
  def profile
    @user = User.find(params[:id])
    @flight = @user.items.find_by(category: "Flight")
    @lodge = @user.items.find_by(category: "Lodge")
  end
end
