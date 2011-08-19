class TestResultsController < ApplicationController
  def new
    @title = "New Test Result"
    @test_result = Test_result.new
  end
  
  def create
    @test_result = Test_result.new(params[:test_result])
    if @test_result.save
      flash[:success] = "Created new test result"
      redirect_to(test_results_path)
    else
      @title = "New Test Result"
      render 'new'
    end
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
