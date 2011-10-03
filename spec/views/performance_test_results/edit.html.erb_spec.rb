require 'spec_helper'

describe "performance_test_results/edit.html.erb" do
  before(:each) do
    @performance_test_result = assign(:performance_test_result, stub_model(PerformanceTestResult,
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
    ))
  end

  it "renders the edit performance_test_result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => performance_test_results_path(@performance_test_result), :method => "post" do
      assert_select "input#performance_test_result_performance_test_id", :name => "performance_test_result[performance_test_id]"
      assert_select "input#performance_test_result_measure1max", :name => "performance_test_result[measure1max]"
      assert_select "input#performance_test_result_measure1min", :name => "performance_test_result[measure1min]"
      assert_select "input#performance_test_result_measure1avg", :name => "performance_test_result[measure1avg]"
      assert_select "textarea#performance_test_result_measure1values", :name => "performance_test_result[measure1values]"
      assert_select "input#performance_test_result_measure2max", :name => "performance_test_result[measure2max]"
      assert_select "input#performance_test_result_measure2min", :name => "performance_test_result[measure2min]"
      assert_select "input#performance_test_result_measure2avg", :name => "performance_test_result[measure2avg]"
      assert_select "textarea#performance_test_result_measure2values", :name => "performance_test_result[measure2values]"
      assert_select "input#performance_test_result_measure3max", :name => "performance_test_result[measure3max]"
      assert_select "input#performance_test_result_measure3min", :name => "performance_test_result[measure3min]"
      assert_select "input#performance_test_result_measure3avg", :name => "performance_test_result[measure3avg]"
      assert_select "textarea#performance_test_result_measure3values", :name => "performance_test_result[measure3values]"
      assert_select "input#performance_test_result_measure4max", :name => "performance_test_result[measure4max]"
      assert_select "input#performance_test_result_measure4min", :name => "performance_test_result[measure4min]"
      assert_select "input#performance_test_result_measure4avg", :name => "performance_test_result[measure4avg]"
      assert_select "textarea#performance_test_result_measure4values", :name => "performance_test_result[measure4values]"
      assert_select "input#performance_test_result_measure5max", :name => "performance_test_result[measure5max]"
      assert_select "input#performance_test_result_measure5min", :name => "performance_test_result[measure5min]"
      assert_select "textarea#performance_test_result_measure5values", :name => "performance_test_result[measure5values]"
    end
  end
end
