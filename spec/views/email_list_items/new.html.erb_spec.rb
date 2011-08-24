require 'spec_helper'

describe "email_list_items/new.html.erb" do
  before(:each) do
    assign(:email_list_item, stub_model(EmailListItem,
      :name => "MyString",
      :email => "MyString",
      :email_list_id => 1
    ).as_new_record)
  end

  it "renders new email_list_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => email_list_items_path, :method => "post" do
      assert_select "input#email_list_item_name", :name => "email_list_item[name]"
      assert_select "input#email_list_item_email", :name => "email_list_item[email]"
      assert_select "input#email_list_item_email_list_id", :name => "email_list_item[email_list_id]"
    end
  end
end
