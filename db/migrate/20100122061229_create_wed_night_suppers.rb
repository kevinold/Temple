class CreateWedNightSuppers < ActiveRecord::Migration
  def self.up
    create_table :wed_night_suppers do |t|
      t.string :meal
      t.date :date
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :wed_night_suppers
  end
end
