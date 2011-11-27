require 'spec_helper'

describe "ptest_results/index.html.erb" do
  before(:each) do
    assign(:ptest_results, [
      stub_model(PtestResult,
        :ptest_id => 1,
        :environment => "Environment",
        :device_id => 1,
        :operating_system_id => 1,
        :connection_id => 1,
        :browser_id => 1,
        :values => "MyText"
      ),
      stub_model(PtestResult,
        :ptest_id => 1,
        :environment => "Environment",
        :device_id => 1,
        :operating_system_id => 1,
        :connection_id => 1,
        :browser_id => 1,
        :values => "MyText"
      )
    ])
  end

  it "renders a list of ptest_results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Environment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
