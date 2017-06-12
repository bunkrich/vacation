class HomeController < ApplicationController
  def index
  	@trip = Trip.last.items.first
  end

  def about
  end
end
