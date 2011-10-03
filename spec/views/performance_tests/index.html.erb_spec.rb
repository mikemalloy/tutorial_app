require 'spec_helper'

describe "performance_tests/index.html.erb" do
  before(:each) do
    assign(:performance_tests, [
      stub_model(PerformanceTest,
        :name => "Name",
        :measure1name => "Measure1name",
        :measure2name => "Measure2name",
        :measure3name => "Measure3name",
        :measure4name => "Measure4name",
        :measure5name => "Measure5name"
      ),
      stub_model(PerformanceTest,
        :name => "Name",
        :measure1name => "Measure1name",
        :measure2name => "Measure2name",
        :measure3name => "Measure3name",
        :measure4name => "Measure4name",
        :measure5name => "Measure5name"
      )
    ])
  end

  it "renders a list of performance_tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Measure1name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Measure2name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Measure3name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Measure4name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Measure5name".to_s, :count => 2
  end
end
