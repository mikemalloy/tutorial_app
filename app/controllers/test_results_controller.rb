class TestResultsController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  before_filter :authenticate, :only => [:send_email, :index, :destroy]
  
  def new
    @title = "New Test Result"
    @test_result = Test_result.new
    @test_suites = TestSuite.all
  end
  
  # POST /test_results
  # POST /test_results.xml
  def create
    
    @test_result = Test_result.new(params[:test_result])
    
    respond_to do |format|
      if @test_result.save
        format.html { save_html }
        format.xml  { render :xml => @test_result, :status => :created, :location => @test_result }
      else
        format.html { not_save_html }
        format.xml  { render :xml => @test_result.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def edit
    @title = "Edit Test Result"
    @test_result = Test_result.find(params[:id])
    @test_suites = TestSuite.all
  end
  
  def update
    @test_result = Test_result.find(params[:id])

    if @test_suite.update_attributes(params[:test_suite])
      format.html { save_html }
    else
      format.html { render :action => "edit" }
    end
  end
  
  def send_email
    @title = "Send Email"
    # debugger
    @test_result = Test_result.find(params[:id])
    @email_list = params[:email_list]
    @user = current_user
    rm = ResultsMailer.send_bvt_result(@email_list, @test_result, @user)
    flash[:success] = "Test result added to the system"
    redirect_to(test_results_path)
  end

  def index
    @title = "All test results"
    @user = current_user
    @test_results = Test_result.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 25)
    #@test_results = Test_result.order(sort_column + " " + sort_direction)
  end
  
  def destroy
    Test_result.find(params[:id]).destroy
    flash[:success] = "Test result destroyed"
    redirect_to test_results_path
  end
  
  private
  
  def save_html
    if @test_result.send_email?
      @user = current_user
      @email_lists = EmailList.all
      render 'send_email'
    else
      flash[:success] = "Create or edit action completed successfully"
      redirect_to(test_results_path)
    end
  end
  
  def not_save_html
     @title = "New Test Result"
     @test_result.project_id = nil
     @test_suites = TestSuite.all
     render 'new'
  end
  
  def sort_column
    Test_result.column_names.include?(params[:sort]) ? params[:sort] : "date_run"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
  

end
