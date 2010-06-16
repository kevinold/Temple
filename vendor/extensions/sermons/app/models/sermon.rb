class Sermon < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title

  def display_date
    date.strftime('%m-%d-%y')
  end
end
