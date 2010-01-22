class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all
  end
  
  def show
    @sermon = Sermon.find(params[:id])
  end
  
  def new
    @sermon = Sermon.new
  end
  
  def create
    @sermon = Sermon.new(params[:sermon])
    if @sermon.save
      flash[:notice] = "Successfully created sermon."
      redirect_to @sermon
    else
      render :action => 'new'
    end
  end
  
  def edit
    @sermon = Sermon.find(params[:id])
  end
  
  def update
    @sermon = Sermon.find(params[:id])
    if @sermon.update_attributes(params[:sermon])
      flash[:notice] = "Successfully updated sermon."
      redirect_to @sermon
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @sermon = Sermon.find(params[:id])
    @sermon.destroy
    flash[:notice] = "Successfully destroyed sermon."
    redirect_to sermons_url
  end
end
