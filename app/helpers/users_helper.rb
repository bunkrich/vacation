module UsersHelper

  def current_trip
    current_trip ||= current_user.trips.where('start_date < ?', Date.today).where('end_date >= ?', Date.today)
  end
end

