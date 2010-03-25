class Sermon < ActiveRecord::Base
  has_permalink :title, :update => true

  def to_param
    permalink
  end

  def display_date
    date.strftime('%m-%d-%y')
  end
end
