class PrayerandpraisesController < ApplicationController
  def index
    @prayerandpraises = Prayerandpraise.published_equals("t").paginate(:page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prayerandpraises }
    end
  end
end
