class SubscribersController < ApplicationController

  def index
    redirect_to :action => 'new'
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      @subscriber.subscribe
      email = Digest::SHA1.hexdigest(@subscriber.email)[0..7]
      flash[:notice] = "You've been subscribed. Please confirm your email address."
      redirect_to :action => 'subscribed', :id => email
    else
      render :action => 'new'
    end
  end

  # User has been subscribed to the newsletter, but he has to confirm email
  def subscribed
  end

  # Confirm newsletter subscription
  def confirm
    @subscriber = Subscriber.find_by_token_and_status!(params[:id], 'pending')
    @subscriber.confirm
  end

  # Unsubscribe from newsletter
  def unsubscribe
    @subscriber = Subscriber.find_by_token_and_status!(params[:id], 'subscribed')
    @subscriber.unsubscribe
  end

end