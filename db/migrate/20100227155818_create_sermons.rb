class CreateSermons < ActiveRecord::Migration
  def self.up
    create_table :sermons do |t|
      t.string :title
      t.string :permalink
      t.string :url
      t.string :verses
      t.text :notes
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :sermons
  end
end
