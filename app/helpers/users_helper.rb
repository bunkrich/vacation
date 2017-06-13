module UsersHelper

  def current_trip
    @current_trip ||= current_user.trip.where('start_date <= ?', Date.today).where('end_date >= ?', Date.today)
  end
end
