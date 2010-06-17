class Sermon < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title

  def to_param
    [id, title].join('-').strip.gsub(/[^a-z0-9]+/i, '-').downcase
  end

  def display_date
    date.strftime('%m-%d-%y')
  end
end
