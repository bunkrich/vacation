module TripsHelper

  def morning
    morning = @day_items.where('date BETWEEN ? AND ?',@date.to_date.beginning_of_day, "#{@date} 13:59:59")
  end

  def day
    day = @day_items.where('date BETWEEN ? AND ?',"#{@date} 14:00:00", "#{@date} 19:59:59")
  end

  def night
    night = @day_items.where('date BETWEEN ? AND ?',"#{@date} 20:00:00", @date.to_date.end_of_day)
  end

  def no_time
    no_time = @day_items.where('DATE IS NULL')
  end
end
