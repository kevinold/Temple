class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.published
  end

  def show
    @newsletter = Newsletter.find_by_id_and_status!(params[:id].split("-").first, true)
    if params[:token]
      subscriber = Subscriber.find_by_token_and_status!(params[:token], 'subscribed')
      content = Liquid::Template.parse(@newsletter.body).render('subscriber' => subscriber, 'newsletter' => @newsletter)
      render :text => content, :layout => "newsletters/#{@newsletter.template}"
    else
      render :text => @newsletter.body, :layout => "newsletters/#{@newsletter.template}"
    end
  end

end