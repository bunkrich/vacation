class UsersController < ApplicationController
  # User profile
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

      if @user.save
        log_in @user
        redirect_to '/'
      else
        @errors = @user.errors.full_messages
        render 'new'
      end
  end

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

  private

    def user_params

    end
end
