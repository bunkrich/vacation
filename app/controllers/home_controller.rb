class HomeController < ApplicationController
  def index
  @trip = Trip.find_by(id: 4)
    @locations = []
    @trip.items.each do |i|
      @locations.push(i.lookup)
      puts "*********************"
    end
    puts @locations
  end

  def about
  end
end
