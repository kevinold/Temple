class AddDateToSermon < ActiveRecord::Migration
  def self.up
    add_column :sermons, :date, :date
  end

  def self.down
    remove_column :sermons, :date
  end
end
