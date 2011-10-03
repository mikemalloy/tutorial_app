class PerformanceTestResultsController < ApplicationController
  before_filter :authenticate
  # GET /performance_test_results
  # GET /performance_test_results.json
  def index
    @performance_test_results = PerformanceTestResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @performance_test_results }
    end
  end

  # GET /performance_test_results/1
  # GET /performance_test_results/1.json
  def show
    @performance_test_result = PerformanceTestResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @performance_test_result }
    end
  end

  # GET /performance_test_results/new
  # GET /performance_test_results/new.json
  def new
    @performance_test_result = PerformanceTestResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @performance_test_result }
    end
  end

  # GET /performance_test_results/1/edit
  def edit
    @performance_test_result = PerformanceTestResult.find(params[:id])
  end

  # POST /performance_test_results
  # POST /performance_test_results.json
  def create
    @performance_test_result = PerformanceTestResult.new(params[:performance_test_result])

    respond_to do |format|
      if @performance_test_result.save
        format.html { save_html }
        format.json { render :json => @performance_test_result, :status => :created, :location => @performance_test_result }
      else
        format.html { render :action => "new" }
        format.json { render :json => @performance_test_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /performance_test_results/1
  # PUT /performance_test_results/1.json
  def update
    @performance_test_result = PerformanceTestResult.find(params[:id])

    respond_to do |format|
      if @performance_test_result.update_attributes(params[:performance_test_result])
        format.html { redirect_to @performance_test_result, :notice => 'Performance test result was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @performance_test_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_test_results/1
  # DELETE /performance_test_results/1.json
  def destroy
    @performance_test_result = PerformanceTestResult.find(params[:id])
    @performance_test = PerformanceTest.find(@performance_test_result.performance_test_id)
    @performance_test_result.destroy

    respond_to do |format|
      format.html { redirect_to @performance_test }
      format.json { head :ok }
    end
  end
  
  private
  
  def save_html
    @performance_test = PerformanceTest.find(@performance_test_result.performance_test_id)
    redirect_to @performance_test
  end
end
