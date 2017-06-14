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

  def correct_users(current_trip)
    current_trip.

    # current_user && current_user.id == current_trip.user_id
  end

  def verify_traveler
    halt(404, erb(:'404')) unless correct_user(@trip)
  end
end
