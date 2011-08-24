require 'spec_helper'

describe "email_lists/edit.html.erb" do
  before(:each) do
    @email_list = assign(:email_list, stub_model(EmailList,
      :name => "MyString"
    ))
  end

  it "renders the edit email_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => email_lists_path(@email_list), :method => "post" do
      assert_select "input#email_list_name", :name => "email_list[name]"
    end
  end
end
