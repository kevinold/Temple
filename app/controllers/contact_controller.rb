class ContactController < ApplicationController

  def new
    @contact_handler = ContactHandler.new
  end

  def create
    @contact_handler = ContactHandler.new(params[:contact_handler])

    if @contact_handler.save
      flash[:notice] = 'Thanks for your message'
      redirect_to :back
    else
      render :action => "new"
    end
  end
  
end
