module ApplicationHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  helper_method :current_user
  helper_method :logged_in?
end
