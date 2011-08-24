require 'spec_helper'

describe "email_lists/show.html.erb" do
  before(:each) do
    @email_list = assign(:email_list, stub_model(EmailList,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
