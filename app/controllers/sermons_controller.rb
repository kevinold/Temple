class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all :conditions => { :published => 1 }, :order => "date DESC"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sermons }
    end
  end

  def show
    @sermon = Sermon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sermon }
    end
  end
end
