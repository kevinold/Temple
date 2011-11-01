class CreateWedNightMeals < ActiveRecord::Migration
  def self.up
    create_table :wed_night_meals do |t|
      t.integer :id
      t.string :name
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :wed_night_meals
  end
end
