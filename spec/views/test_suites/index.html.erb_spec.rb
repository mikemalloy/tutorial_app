require 'spec_helper'

describe "test_suites/index.html.erb" do
  before(:each) do
    assign(:test_suites, [
      stub_model(TestSuite,
        :project_id => 1,
        :name => "Name",
        :type => "Type",
        :num_tests => 1,
        :num_automated => 1,
        :manual_time => 1
      ),
      stub_model(TestSuite,
        :project_id => 1,
        :name => "Name",
        :type => "Type",
        :num_tests => 1,
        :num_automated => 1,
        :manual_time => 1
      )
    ])
  end

  it "renders a list of test_suites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
