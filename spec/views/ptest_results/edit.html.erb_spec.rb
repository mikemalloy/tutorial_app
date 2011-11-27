require 'spec_helper'

describe "ptest_results/edit.html.erb" do
  before(:each) do
    @ptest_result = assign(:ptest_result, stub_model(PtestResult,
      :ptest_id => 1,
      :environment => "MyString",
      :device_id => 1,
      :operating_system_id => 1,
      :connection_id => 1,
      :browser_id => 1,
      :values => "MyText"
    ))
  end

  it "renders the edit ptest_result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ptest_results_path(@ptest_result), :method => "post" do
      assert_select "input#ptest_result_ptest_id", :name => "ptest_result[ptest_id]"
      assert_select "input#ptest_result_environment", :name => "ptest_result[environment]"
      assert_select "input#ptest_result_device_id", :name => "ptest_result[device_id]"
      assert_select "input#ptest_result_operating_system_id", :name => "ptest_result[operating_system_id]"
      assert_select "input#ptest_result_connection_id", :name => "ptest_result[connection_id]"
      assert_select "input#ptest_result_browser_id", :name => "ptest_result[browser_id]"
      assert_select "textarea#ptest_result_values", :name => "ptest_result[values]"
    end
  end
end
