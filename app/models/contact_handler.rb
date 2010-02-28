class ContactHandler < ActiveForm

  validates_presence_of :name, :email, :subject, :body
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  attr_accessor :name, :subject, :email, :body

end
