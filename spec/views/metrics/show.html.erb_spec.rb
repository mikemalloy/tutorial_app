require 'spec_helper'

describe "metrics/show.html.erb" do
  before(:each) do
    @metric = assign(:metric, stub_model(Metric,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
