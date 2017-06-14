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

  def item_no_time
    item_no_time = @day_items.where('DATE IS NULL')
  end


  def item_no_date
    no_date = @trip.items.where("date is null")
  end

  def out_of_range
    out_of_range = @trip.items.where('date NOT BETWEEN ? AND ?', @trip.start_date, @trip.end_date)
  end

end
