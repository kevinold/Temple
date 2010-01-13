class PagesController < ApplicationController

  def index
    @pages = Page.published
  end

  def show
    @page = Page.find_by_permalink_and_status!(params[:id], true)
  end

end