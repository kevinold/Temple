class Subscriber < ActiveRecord::Base

  validates_presence_of :email, :name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_presence_of :status

  before_create :set_token
  after_create :subscribe

  def self.status
    %w( pending subscribed unsubscribed )
  end

  def full_name
    name
  end

  # Here we send email with a confirmation link and set the user 
  # and status to pending
  def subscribe
    SubscriberMailer.deliver_subscribe(self)
    self.update_attributes :status => 'pending'
  end

  def confirm
    self.update_attributes :status => 'subscribed'
  end

  # Here we send the unsubscription email
  def unsubscribe
    SubscriberMailer.deliver_unsubscribe(self)
    self.update_attributes :status => 'unsubscribed'
  end

  def to_liquid
    self.attributes.stringify_keys
  end

private

  def set_token
    record = "#{self.class.name}#{id}"
    @attributes['token'] = CGI::Session.generate_unique_id(record).first(12)
  end

end