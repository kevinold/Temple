class CreateTypusPim < ActiveRecord::Migration

  def self.up

    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.string :email
      t.string :url
      t.text :note
      t.timestamps
    end

    Contact.create :first_name => "John", 
                   :last_name => "Smith", 
                   :email => 'john@example.com', 
                   :phone => '555-123456'

    create_table :notes do |t|
      t.string :title
      t.text :content
      t.timestamps
    end

    Note.create :title => "Hello!", 
                :content => "This the first note. Welcome to Typus PIM."

  end

  def self.down
    drop_table :contacts
    drop_table :notes
  end

end