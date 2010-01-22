class CreatePrayerandpraises < ActiveRecord::Migration
  def self.up
    create_table :prayerandpraises do |t|
      t.string :title
      t.string :email
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :prayerandpraises
  end
end
