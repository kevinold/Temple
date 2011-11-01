class CreatePromos < ActiveRecord::Migration
  def self.up
    create_table :promos do |t|
      t.integer :id
      t.string :name
      t.string :image
      t.text :details

      t.timestamps
    end
  end

  def self.down
    drop_table :promos
  end
end
