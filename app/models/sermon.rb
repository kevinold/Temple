class Sermon < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true

  def display_date
    date.strftime('%m-%d-%y')
  end
end
