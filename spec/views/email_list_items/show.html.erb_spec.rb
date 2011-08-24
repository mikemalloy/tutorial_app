require 'spec_helper'

describe "email_list_items/show.html.erb" do
  before(:each) do
    @email_list_item = assign(:email_list_item, stub_model(EmailListItem,
      :name => "Name",
      :email => "Email",
      :email_list_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
