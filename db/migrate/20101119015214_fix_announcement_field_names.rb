class FixAnnouncementFieldNames < ActiveRecord::Migration
  def self.up
    remove_column :announcements, :when
    remove_column :announcements, :where

    add_column :announcements, :announcement_date, :datetime
    add_column :announcements, :location, :string
  end

  def self.down
  end
end
