class StylesheetsController < ApplicationController

  caches_page :show

  def show
    @stylesheet = Stylesheet.find_by_name!(params[:id])
    respond_to do |format|
      format.html { raise ActiveRecord::RecordNotFound }
      format.css { render :text => @stylesheet.content }
    end
  end

end