class PrayerandpraisesController < ApplicationController
  # GET /prayerandpraises
  # GET /prayerandpraises.xml
  def index
    @prayerandpraises = Prayerandpraise.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prayerandpraises }
    end
  end

  # GET /prayerandpraises/1
  # GET /prayerandpraises/1.xml
  def show
    @prayerandpraise = Prayerandpraise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prayerandpraise }
    end
  end

  # GET /prayerandpraises/new
  # GET /prayerandpraises/new.xml
  def new
    @prayerandpraise = Prayerandpraise.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prayerandpraise }
    end
  end

  # GET /prayerandpraises/1/edit
  def edit
    @prayerandpraise = Prayerandpraise.find(params[:id])
  end

  # POST /prayerandpraises
  # POST /prayerandpraises.xml
  def create
    @prayerandpraise = Prayerandpraise.new(params[:prayerandpraise])

    respond_to do |format|
      if @prayerandpraise.save
        flash[:notice] = 'Prayerandpraise was successfully created.'
        format.html { redirect_to(@prayerandpraise) }
        format.xml  { render :xml => @prayerandpraise, :status => :created, :location => @prayerandpraise }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prayerandpraise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prayerandpraises/1
  # PUT /prayerandpraises/1.xml
  def update
    @prayerandpraise = Prayerandpraise.find(params[:id])

    respond_to do |format|
      if @prayerandpraise.update_attributes(params[:prayerandpraise])
        flash[:notice] = 'Prayerandpraise was successfully updated.'
        format.html { redirect_to(@prayerandpraise) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prayerandpraise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prayerandpraises/1
  # DELETE /prayerandpraises/1.xml
  def destroy
    @prayerandpraise = Prayerandpraise.find(params[:id])
    @prayerandpraise.destroy

    respond_to do |format|
      format.html { redirect_to(prayerandpraises_url) }
      format.xml  { head :ok }
    end
  end
end
