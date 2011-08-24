class EmailListItemsController < ApplicationController
  
  before_filter :authenticate
  
  # GET /email_list_items
  # GET /email_list_items.xml
  def index
    @email_list_items = EmailListItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @email_list_items }
    end
  end

  # GET /email_list_items/1
  # GET /email_list_items/1.xml
  def show
    @email_list_item = EmailListItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @email_list_item }
    end
  end

  # GET /email_list_items/new
  # GET /email_list_items/new.xml
  def new
    @email_list_item = EmailListItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @email_list_item }
    end
  end

  # GET /email_list_items/1/edit
  def edit
    @email_list_item = EmailListItem.find(params[:id])
  end

  # POST /email_list_items
  # POST /email_list_items.xml
  def create
    email_list = EmailList.find(current_email_list_id)
    @email_list_item = email_list.email_list_items.build(params[:email_list_item])
    if @email_list_item.save
      flash[:success] = "User #{update_user.name} updated successfully"
    end
    
    redirect_to @current_email_list
    
  end

  # PUT /email_list_items/1
  # PUT /email_list_items/1.xml
  def update
    @email_list_item = EmailListItem.find(params[:id])

    respond_to do |format|
      if @email_list_item.update_attributes(params[:email_list_item])
        format.html { redirect_to(@email_list_item, :notice => 'Email list item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @email_list_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /email_list_items/1
  # DELETE /email_list_items/1.xml
  def destroy
    @email_list_item = EmailListItem.find(params[:id])
    @email_list = @email_list_item.email_list
    @email_list_item.destroy

    respond_to do |format|
      format.html { redirect_to(email_list_path(@email_list)) }
      format.xml  { head :ok }
    end
  end
end
