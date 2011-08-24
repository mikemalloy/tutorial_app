class EmailListsController < ApplicationController
  
  before_filter :authenticate
  
  # GET /email_lists
  # GET /email_lists.xml
  def index
    @email_lists = EmailList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @email_lists }
    end
  end
  
  def blah
    @email_lists = EmailList.all
    render 'index'
  end

  # GET /email_lists/1
  # GET /email_lists/1.xml
  def show
    @email_list = EmailList.find(params[:id])
    @email_list_items = @email_list.email_list_items
    current_email_list_id = @email_list.id
    
    @email_list_item = EmailListItem.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @email_list }
    end
  end
  
  def add_email
    email_list = EmailList.find(params[:id])
    attrs = {:name => params[:name], :email => params[:email]}
    email_list_item = email_list.email_list_items.build(attrs)
    if email_list_item.save
      flash[:success] = "Email added successfully"
    end
    redirect_to email_list_path(@email_list)  
  end

  # GET /email_lists/new
  # GET /email_lists/new.xml
  def new
    @email_list = EmailList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @email_list }
    end
  end

  # GET /email_lists/1/edit
  def edit
    @email_list = EmailList.find(params[:id])
  end

  # POST /email_lists
  # POST /email_lists.xml
  def create
    @email_list = EmailList.new(params[:email_list])

    respond_to do |format|
      if @email_list.save
        format.html { redirect_to(@email_list, :notice => 'Email list was successfully created.') }
        format.xml  { render :xml => @email_list, :status => :created, :location => @email_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @email_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /email_lists/1
  # PUT /email_lists/1.xml
  def update
    @email_list = EmailList.find(params[:id])

    respond_to do |format|
      if @email_list.update_attributes(params[:email_list])
        format.html { redirect_to(@email_list, :notice => 'Email list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @email_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /email_lists/1
  # DELETE /email_lists/1.xml
  def destroy
    @email_list = EmailList.find(params[:id])
    @email_list.destroy

    respond_to do |format|
      format.html { redirect_to(email_lists_url) }
      format.xml  { head :ok }
    end
  end
end
