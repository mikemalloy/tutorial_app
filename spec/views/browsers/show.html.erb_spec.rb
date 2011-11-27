require 'spec_helper'

describe "browsers/show.html.erb" do
  before(:each) do
    @browser = assign(:browser, stub_model(Browser,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
