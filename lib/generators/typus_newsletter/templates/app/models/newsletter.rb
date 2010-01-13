class Newsletter < ActiveRecord::Base

  # extend Newsletter::Extensions::ClassMethods
  # include Newsletter::Extensions::InstanceMethods

  validates_presence_of :subject
  serialize :body_raw

  named_scope :published, :conditions => { :status => true }

  def self.template
    templates
  end

  def self.generate
    create :subject => default_subject, 
           :body => "Here we insert the body automatically. This can be generated with ..."
  end

  def deliver
    subscribers = Subscriber.find_all_by_status('subscribed').collect(&:id)
    subscribers.each do |id|
      if id > self.offset
        subscriber = Subscriber.find(id)
        content = Liquid::Template.parse(self.body).render('subscriber' => subscriber, 'newsletter' => self)
        NewsletterMailer.deliver_newsletter(self, content, subscriber)
        self.update_attributes :offset => id
        logger.info("=> Sending newsletter to #{subscriber.full_name} (#{id}) and updated offset.")
      end
    end
  end

  def to_liquid
    self.attributes.stringify_keys
  end

  def to_param
    "#{id}-#{subject.parameterize}"
  end

  @@default_subject = "Default subject"
  cattr_accessor :default_subject

  @@auto_generate = false
  cattr_accessor :auto_generate

  @@from = "Application Newsletter <do-not-reply@application.com>"
  cattr_accessor :from

  @@subject = { :subscribe => "...", :unsubscribe => "..." }
  cattr_accessor :subject

  @@templates = %w( default )
  cattr_accessor :templates

end