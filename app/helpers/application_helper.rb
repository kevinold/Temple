module ApplicationHelper

  def next_sunday
    date = Date.today
    date = date +=1 until date.wday == 0
    "#{Date::MONTHNAMES[date.mon]} #{date.day}, #{date.year}"
  end

# Return a title on a per-page basis.
  def title
    base_title = "Temple Baptist Church, White House, TN"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def upcoming_events
      e = Gcal.new.get
  end

end
