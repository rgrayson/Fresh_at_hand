module ApplicationHelper
  #formats UTC date to EST (-5hrs)
  def format_datetime_as_EST(dte)
    if dte.nil?
      r = ""
    else
      t = dte - 5.hours
      r = t.strftime("%m/%d/%y %I:%M:%S%p")
    end
    return r
  end

  #sets order status text
  def set_ordsts_txt (ordsts)
    if ordsts.to_i == 1
      txt = "Available"
    elsif ordsts.to_i == 2
      txt = "Submitted"
    elsif ordsts.to_i == 3
      txt = "Accepted"
    else
      txt = "Unknown"
    end
    return txt
  end

end
