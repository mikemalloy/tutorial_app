class PerformanceTestsController < ApplicationController
  before_filter :authenticate
  # GET /performance_tests
  # GET /performance_tests.json
  def index
    @performance_tests = PerformanceTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @performance_tests }
    end
  end
  
  def add_test_result
    @performance_test = PerformanceTest.find(params[:id])
    @performance_test_result = PerformanceTestResult.new
    @performance_test_result.performance_test_id = @performance_test.id
    render 'performance_test_results/_add_from_perf_test_form'
  end

  # GET /performance_tests/1
  # GET /performance_tests/1.json
  def show
    @performance_test = PerformanceTest.find(params[:id])
    @performance_test_results = @performance_test.performance_test_results
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @performance_test }
    end
  end

  # GET /performance_tests/new
  # GET /performance_tests/new.json
  def new
    @performance_test = PerformanceTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @performance_test }
    end
  end

  # GET /performance_tests/1/edit
  def edit
    @performance_test = PerformanceTest.find(params[:id])
  end

  # POST /performance_tests
  # POST /performance_tests.json
  def create
    @performance_test = PerformanceTest.new(params[:performance_test])

    respond_to do |format|
      if @performance_test.save
        format.html { redirect_to @performance_test, :notice => 'Performance test was successfully created.' }
        format.json { render :json => @performance_test, :status => :created, :location => @performance_test }
      else
        format.html { render :action => "new" }
        format.json { render :json => @performance_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /performance_tests/1
  # PUT /performance_tests/1.json
  def update
    @performance_test = PerformanceTest.find(params[:id])

    respond_to do |format|
      if @performance_test.update_attributes(params[:performance_test])
        format.html { redirect_to @performance_test, :notice => 'Performance test was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @performance_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_tests/1
  # DELETE /performance_tests/1.json
  def destroy
    @performance_test = PerformanceTest.find(params[:id])
    @performance_test.destroy

    respond_to do |format|
      format.html { redirect_to performance_tests_url }
      format.json { head :ok }
    end
  end
  
  private
 
  
end
