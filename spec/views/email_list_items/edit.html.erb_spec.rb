require 'spec_helper'

describe "email_list_items/edit.html.erb" do
  before(:each) do
    @email_list_item = assign(:email_list_item, stub_model(EmailListItem,
      :name => "MyString",
      :email => "MyString",
      :email_list_id => 1
    ))
  end

  it "renders the edit email_list_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => email_list_items_path(@email_list_item), :method => "post" do
      assert_select "input#email_list_item_name", :name => "email_list_item[name]"
      assert_select "input#email_list_item_email", :name => "email_list_item[email]"
      assert_select "input#email_list_item_email_list_id", :name => "email_list_item[email_list_id]"
    end
  end
end
