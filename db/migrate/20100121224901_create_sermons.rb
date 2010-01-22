class CreateSermons < ActiveRecord::Migration
  def self.up
    create_table :sermons do |t|
      t.string :title
      t.text :description
      t.string :podcast_filename
      t.string :video_filename
      t.boolean :published
      t.timestamps
    end
  end
  
  def self.down
    drop_table :sermons
  end
end
