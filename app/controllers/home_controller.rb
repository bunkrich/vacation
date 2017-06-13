class HomeController < ApplicationController
  def index
  	@trip = Trip.last.items.first
    if logged_in?
      @user = current_user
    end
  end

  def about
  end
end
