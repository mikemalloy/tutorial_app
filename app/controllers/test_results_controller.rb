class TestResultsController < ApplicationController
  
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
    #rm = ResultsMailer.send_test_mail
    rm.deliver
    # redirect_to(test_results_path)
  end

  def index
    @title = "All test results"
    @test_results = Test_result.paginate(:page => params[:page])
  end
  
  def destroy
    Test_result.find(params[:id]).destroy
    flash[:success] = "Test result destroyed"
    redirect_to test_results_path
  end

end
