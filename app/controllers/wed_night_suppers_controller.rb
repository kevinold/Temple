class WedNightSuppersController < ApplicationController
  # GET /wed_night_suppers
  # GET /wed_night_suppers.xml
  def index
    @wed_night_suppers = WedNightSupper.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wed_night_suppers }
    end
  end

  # GET /wed_night_suppers/1
  # GET /wed_night_suppers/1.xml
  def show
    @wed_night_supper = WedNightSupper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wed_night_supper }
    end
  end

  # GET /wed_night_suppers/new
  # GET /wed_night_suppers/new.xml
  def new
    @wed_night_supper = WedNightSupper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wed_night_supper }
    end
  end

  # GET /wed_night_suppers/1/edit
  def edit
    @wed_night_supper = WedNightSupper.find(params[:id])
  end

  # POST /wed_night_suppers
  # POST /wed_night_suppers.xml
  def create
    @wed_night_supper = WedNightSupper.new(params[:wed_night_supper])

    respond_to do |format|
      if @wed_night_supper.save
        flash[:notice] = 'WedNightSupper was successfully created.'
        format.html { redirect_to(@wed_night_supper) }
        format.xml  { render :xml => @wed_night_supper, :status => :created, :location => @wed_night_supper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wed_night_supper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wed_night_suppers/1
  # PUT /wed_night_suppers/1.xml
  def update
    @wed_night_supper = WedNightSupper.find(params[:id])

    respond_to do |format|
      if @wed_night_supper.update_attributes(params[:wed_night_supper])
        flash[:notice] = 'WedNightSupper was successfully updated.'
        format.html { redirect_to(@wed_night_supper) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wed_night_supper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wed_night_suppers/1
  # DELETE /wed_night_suppers/1.xml
  def destroy
    @wed_night_supper = WedNightSupper.find(params[:id])
    @wed_night_supper.destroy

    respond_to do |format|
      format.html { redirect_to(wed_night_suppers_url) }
      format.xml  { head :ok }
    end
  end
end
