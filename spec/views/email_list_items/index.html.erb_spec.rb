require 'spec_helper'

describe "email_list_items/index.html.erb" do
  before(:each) do
    assign(:email_list_items, [
      stub_model(EmailListItem,
        :name => "Name",
        :email => "Email",
        :email_list_id => 1
      ),
      stub_model(EmailListItem,
        :name => "Name",
        :email => "Email",
        :email_list_id => 1
      )
    ])
  end

  it "renders a list of email_list_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
