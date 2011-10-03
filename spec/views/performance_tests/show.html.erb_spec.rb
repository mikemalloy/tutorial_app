require 'spec_helper'

describe "performance_tests/show.html.erb" do
  before(:each) do
    @performance_test = assign(:performance_test, stub_model(PerformanceTest,
      :name => "Name",
      :measure1name => "Measure1name",
      :measure2name => "Measure2name",
      :measure3name => "Measure3name",
      :measure4name => "Measure4name",
      :measure5name => "Measure5name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Measure1name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Measure2name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Measure3name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Measure4name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Measure5name/)
  end
end
