# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def next_sunday
    date = Date.today
    date = date +=1 until date.wday == 0
    "#{Date::MONTHNAMES[date.mon]} #{date.day}, #{date.year}"
  end

end
