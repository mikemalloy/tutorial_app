require 'spec_helper'

describe "performance_test_results/index.html.erb" do
  before(:each) do
    assign(:performance_test_results, [
      stub_model(PerformanceTestResult,
        :performance_test_id => 1,
        :measure1max => 1.5,
        :measure1min => 1.5,
        :measure1avg => 1.5,
        :measure1values => "MyText",
        :measure2max => 1.5,
        :measure2min => 1.5,
        :measure2avg => 1.5,
        :measure2values => "MyText",
        :measure3max => 1.5,
        :measure3min => 1.5,
        :measure3avg => 1.5,
        :measure3values => "MyText",
        :measure4max => 1.5,
        :measure4min => 1.5,
        :measure4avg => 1.5,
        :measure4values => "MyText",
        :measure5max => 1.5,
        :measure5min => 1.5,
        :measure5values => "MyText"
      ),
      stub_model(PerformanceTestResult,
        :performance_test_id => 1,
        :measure1max => 1.5,
        :measure1min => 1.5,
        :measure1avg => 1.5,
        :measure1values => "MyText",
        :measure2max => 1.5,
        :measure2min => 1.5,
        :measure2avg => 1.5,
        :measure2values => "MyText",
        :measure3max => 1.5,
        :measure3min => 1.5,
        :measure3avg => 1.5,
        :measure3values => "MyText",
        :measure4max => 1.5,
        :measure4min => 1.5,
        :measure4avg => 1.5,
        :measure4values => "MyText",
        :measure5max => 1.5,
        :measure5min => 1.5,
        :measure5values => "MyText"
      )
    ])
  end

  it "renders a list of performance_test_results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
