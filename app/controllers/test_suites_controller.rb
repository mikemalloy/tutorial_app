class TestSuitesController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_filter :authenticate
  # GET /test_suites
  # GET /test_suites.xml
  def index
    @test_suites = TestSuite.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 15)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_suites }
      
      # With the Flexigrid, we need to render Json data
      format.js do
        # What is the first line of the result set we want ? (due to pagination. 0 = first)
        offset = (params["page"].to_i-1)*params["rp"].to_i if params["page"] and params["rp"]

        # Conditions passed by flexigrid
        conditions = [params["qtype"]+" LIKE ?", params["query"]] if params["query"] and params["query"].strip!=""
        people = TestSuite.where(conditions)

        # Total count of lines, before paginating
        total = people.count

        # People from the page
        people_de_la_page = people.order([params["sortname"], params["sortorder"]].join(" ")).offset(offset).limit(params["rp"]).all
        
        # Rendering
        render :json => {
            :rows=>people_de_la_page.collect{|r| {:id=>r.id, :cell=>[r.name, r.suite_type, r.num_tests, r.num_automated]}}, 
            :page=>params["page"],
            :total=>total
          }.to_json
          
      end #format.js
    end
  end

  # GET /test_suites/1
  # GET /test_suites/1.xml
  def show
    @test_suite = TestSuite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_suite }
    end
  end

  # GET /test_suites/new
  # GET /test_suites/new.xml
  def new
    @test_suite = TestSuite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_suite }
    end
  end

  # GET /test_suites/1/edit
  def edit
    @test_suite = TestSuite.find(params[:id])
  end

  # POST /test_suites
  # POST /test_suites.xml
  def create
    @test_suite = TestSuite.new(params[:test_suite])

    respond_to do |format|
      if @test_suite.save
        format.html { redirect_to(@test_suite, :notice => 'Test suite was successfully created.') }
        format.xml  { render :xml => @test_suite, :status => :created, :location => @test_suite }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_suite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_suites/1
  # PUT /test_suites/1.xml
  def update
    @test_suite = TestSuite.find(params[:id])

    respond_to do |format|
      if @test_suite.update_attributes(params[:test_suite])
        format.html { redirect_to(@test_suite, :notice => 'Test suite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_suite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_suites/1
  # DELETE /test_suites/1.xml
  def destroy
    @test_suite = TestSuite.find(params[:id])
    @test_suite.destroy

    respond_to do |format|
      format.html { redirect_to(test_suites_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def sort_column
    TestSuite.column_names.include?(params[:sort]) ? params[:sort] : "project_id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
