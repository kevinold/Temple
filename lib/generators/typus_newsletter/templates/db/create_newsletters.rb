class CreateNewsletters < ActiveRecord::Migration

  def self.up

    create_table :newsletters do |t|
      t.string :subject, :null => false
      t.text :introduction, :default => "", :null => false
      t.text :body, :default => "", :null => false
      t.text :body_raw, :default => "", :null => false
      t.text :footer, :default => "", :null => false
      t.boolean :status, :default => false
      t.integer :offset, :limit => 11, :default => 0, :null => false
      t.string :template, :null => false, :default => 'default'
      t.timestamps
    end

    create_table :subscribers do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :status, :default => 'pending', :null => false
      t.string :token
      t.timestamps
    end

    add_index :subscribers, :email
    add_index :subscribers, :token

  end

  def self.down
    drop_table :newsletters
    drop_table :subscribers
  end

end