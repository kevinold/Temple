class Announcement < ActiveRecord::Base
  attr_accessible :what, :when, :where, :details, :published
end
