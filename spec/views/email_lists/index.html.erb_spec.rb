require 'spec_helper'

describe "email_lists/index.html.erb" do
  before(:each) do
    assign(:email_lists, [
      stub_model(EmailList,
        :name => "Name"
      ),
      stub_model(EmailList,
        :name => "Name"
      )
    ])
  end

  it "renders a list of email_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
