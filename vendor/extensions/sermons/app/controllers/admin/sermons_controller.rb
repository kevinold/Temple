class Admin::SermonsController < ApplicationController
  def index
    @sermons = Sermon.find(:all, :order => "date DESC")
    render(:action => 'index')
  end

  def new
    @sermon = Sermon.new
    render(:action => 'edit')
  end

  def create
    @sermon = Sermon.new(params[:sermon])
    if @sermon.save
      flash[:notice] = "Successfully added a new sermon."
      redirect_to(admin_sermons_path)
    else
      flash[:error] = "Validation errors occurred while processing this form. Please take a moment to review the form and correct any input errors before continuing."
      render(:action => 'edit')
    end
  end

  def edit
    @sermon = Sermon.find(params[:id])
    render(:action => 'edit')
  end

  def update
    @sermon = Sermon.find(params[:id])
    if @sermon.update_attributes(params[:sermon])
      flash[:notice] = "Successfully updated the sermon details."
      redirect_to(admin_sermons_path)
    else
      flash[:error] = "Validation errors occurred while processing this form. Please take a moment to review the form and correct any input errors before continuing."
      render(:action => 'edit')
    end
  end

  def destroy
    @sermon = Sermon.find(params[:id])
    @sermon.destroy
    flash[:error] = "The sermon was deleted."
    redirect_to(admin_sermons_path)
  end
end
