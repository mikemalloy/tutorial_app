class TestResultsController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  before_filter :authenticate
  
  def new
    @title = "New Test Result"
    @test_result = Test_result.new
  end
  
  def blah
  
  end
  
  def create
    @test_result = Test_result.new(params[:test_result])
    if @test_result.save
      if @test_result.send_email?
        render 'send_email'
      else
        flash[:success] = "Created new test result: Send email is #{params[:test_result][:send_email]}"
        redirect_to(test_results_path)
      end
    else
      @title = "New Test Result"
      render 'new'
    end
  end
  
  def send_email
    @title = "Send Email"
    # debugger
    @test_result = Test_result.find(params[:id])
    @email_list = params[:email_list]
    rm = ResultsMailer.send_bvt_result(@email_list, @test_result).deliver
    rm.deliver
    flash[:success] = "Test result added to the system"
    redirect_to(test_results_path)
  end

  def index
    @title = "All test results"
    @test_results = Test_result.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page])
    #@test_results = Test_result.order(sort_column + " " + sort_direction)
  end
  
  def destroy
    Test_result.find(params[:id]).destroy
    flash[:success] = "Test result destroyed"
    redirect_to test_results_path
  end
  
  private
  def sort_column
    Test_result.column_names.include?(params[:sort]) ? params[:sort] : "date_run"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
  

end
