class FixAnnouncementsFieldNames2 < ActiveRecord::Migration
  def self.up
    remove_column :announcements, :announcement_date

    add_column :announcements, :ann_date, :date
    add_column :announcements, :ann_time, :time
  end

  def self.down
    remove_column :announcements, :ann_date
    remove_column :announcements, :ann_time
  end
end
