class PtestResultsController < ApplicationController
  
  require 'net/http'
  require 'json'
  
  # GET /ptest_results
  # GET /ptest_results.json
  def index
    @ptest_results = PtestResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ptest_results }
    end
  end

  # GET /ptest_results/1
  # GET /ptest_results/1.json
  def show
    @ptest_result = PtestResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ptest_result }
    end
  end

  # GET /ptest_results/new
  # GET /ptest_results/new.json
  def new
    @ptest_result = PtestResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ptest_result }
    end
  end

  # GET /ptest_results/1/edit
  def edit
    @ptest_result = PtestResult.find(params[:id])
  end

  # POST /ptest_results
  # POST /ptest_results.json
  def create
    @ptest_result = PtestResult.new(params[:ptest_result])

    respond_to do |format|
      if @ptest_result.save
        format.html { save_html }
        format.json { render :json => @ptest_result, :status => :created, :location => @ptest_result }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ptest_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ptest_results/1
  # PUT /ptest_results/1.json
  def update
    @ptest_result = PtestResult.find(params[:id])

    respond_to do |format|
      if @ptest_result.update_attributes(params[:ptest_result])
        format.html { redirect_to @ptest_result, :notice => 'Ptest result was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ptest_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ptest_results/1
  # DELETE /ptest_results/1.json
  def destroy
    @ptest_result = PtestResult.find(params[:id])
    @ptest_result.destroy

    respond_to do |format|
      format.html { redirect_to ptest_results_url }
      format.json { head :ok }
    end
  end
  
  private
  def save_html
    num_saved = send_results_to_zunit
    redirect_to ptests_path, :notice => "Results saved.  #{num_saved} timings uploaded to zunit system"  
  end
  
  def send_results_to_zunit
    value_array = @ptest_result.values.split(",")
    url = "http://zunit.corp.zynga.com/zQuality/Services/insertMobileSample.ashx"
    uri = URI.parse url
    
    saved_count = 0
    value_array.each do |value|
      request_json = {}
      request_json["TestID"] = @ptest_result.ptest.name
      request_json["MobileProductID"] = @ptest_result.ptest.project_id.to_i
      request_json["MobileEnvironmentID"] = @ptest_result.environment
      request_json["MobileDeviceID"] = @ptest_result.device_id.to_i
      request_json["MobileOperatingSystemID"] = @ptest_result.operating_system_id.to_i
      request_json["MobileMetricID"] = @ptest_result.ptest.metric_id.to_i
      request_json["MobileConnectionID"] = @ptest_result.connection_id.to_i
      request_json["MobileBrowserID"] = @ptest_result.browser_id.to_i
      request_json["Target"] = 0
      request_json["Threshold"] = 0
      request_json["Sample"] = value.strip.to_f
      
      jsontxt = JSON.generate( request_json )
      zunit_request = Net::HTTP::Post.new(url)
      zunit_request.add_field "Content-Type", "application/json"
      zunit_request.body = jsontxt

      http = Net::HTTP.new(uri.host, uri.port)
      response = http.request(zunit_request)
      
      if response.body.strip == "true"
        saved_count += 1
      end
    end
    return saved_count
  end
  
  
end
