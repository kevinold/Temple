class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.string :what
      t.datetime :when
      t.string :where
      t.text :details
      t.boolean :published
      t.timestamps
    end
  end

  def self.down
    drop_table :announcements
  end
end
