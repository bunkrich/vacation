module SessionsHelper
  def log_in(user)
     session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # def correct_users(current_trip)
  #   Traveler.where(trip_id: current_trip.id, user_id: current_user.id)
    # if the length is 0 then naaaaa

  # end
  #
  # def verify_traveler
    # do error redirect/ unless correct_users(@trip)
  # end
end
