class ContactHandler
  include ActiveModel::Validations

  validates_presence_of :name, :email, :subject, :body
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  attr_accessor :name, :subject, :email, :body

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key
  end

  def save
    if self.valid?
      ContactMailer.contact_notification(self).deliver
      return true
    end
    return false
  end

end
