class PtestsController < ApplicationController
  # GET /ptests
  # GET /ptests.json
  def index
    @ptests = Ptest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ptests }
    end
  end

  # GET /ptests/1
  # GET /ptests/1.json
  def show
    @ptest = Ptest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ptest }
    end
  end

  # GET /ptests/new
  # GET /ptests/new.json
  def new
    @ptest = Ptest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ptest }
    end
  end
  
  def add_test_result
    @ptest = Ptest.find(params[:id])
    @ptest_result = PtestResult.new
    @ptest_result.ptest_id = @ptest.id
    render 'ptest_results/_add_from_ptest_form'
  end

  # GET /ptests/1/edit
  def edit
    @ptest = Ptest.find(params[:id])
  end

  # POST /ptests
  # POST /ptests.json
  def create
    @ptest = Ptest.new(params[:ptest])

    respond_to do |format|
      if @ptest.save
        format.html { redirect_to @ptest, :notice => 'Ptest was successfully created.' }
        format.json { render :json => @ptest, :status => :created, :location => @ptest }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ptest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ptests/1
  # PUT /ptests/1.json
  def update
    @ptest = Ptest.find(params[:id])

    respond_to do |format|
      if @ptest.update_attributes(params[:ptest])
        format.html { redirect_to @ptest, :notice => 'Ptest was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ptest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ptests/1
  # DELETE /ptests/1.json
  def destroy
    @ptest = Ptest.find(params[:id])
    @ptest.destroy

    respond_to do |format|
      format.html { redirect_to ptests_url }
      format.json { head :ok }
    end
  end
end
