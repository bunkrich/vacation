require 'pry'

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

  # GET /trip/:id/invite/new
  def invitation
    @user = current_user
    @trip = Trip.find_by(id: params[:id])
  end

  # POST /trip/:id/invite
  def invited
    @user = User.new
    @trip = Trip.find_by(id: params[:id])
    p"============================"
    p @trip
    InviteFriendsMailer.invite_email(params[:email], @trip.id).deliver

    redirect_to @trip
  end

  # get '/signup/trips/:id/new'
  def new_traveler
    @trip = Trip.find(params[:id])
  end

  # post '/signup/trips/:id'
  def create_traveler
    @trip = Trip.find(params[:id])
    @user = @trip.users.new(user_params)

    if @user.save
      traveler = Traveler.create(user_id: @user.id, trip_id: @trip.id)
      log_in @user
      redirect_to "/trips/#{@trip.id}"
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  # get '/login/trips/:id/new'
  def login_traveler
    @trip = Trip.find(params[:id])
  end

  # post '/login/trips/:id'
  def logging_in_traveler
    user = User.find_by(email: params[:session][:email])
    @trip = Trip.find(params[:id])

    if user && user.authenticate(params[:session][:password])
      log_in user
      Traveler.create(user: current_user, trip: @trip)
      redirect_to '/'
    else
      @errors = ["Incorrect login information"]
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name,:last_name,:email, :password, :image, :password_confirmation)
    end
end
