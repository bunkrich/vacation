class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @trips = @user.trips
  end

  def profile
    @user = User.find(params[:id])
    @flight = @user.items.find_by(category: "Flight")
    @lodge = @user.items.find_by(category: "Lodge")
  end
end
