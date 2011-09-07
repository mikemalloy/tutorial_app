require 'spec_helper'

describe "test_suites/edit.html.erb" do
  before(:each) do
    @test_suite = assign(:test_suite, stub_model(TestSuite,
      :project_id => 1,
      :name => "MyString",
      :type => "MyString",
      :num_tests => 1,
      :num_automated => 1,
      :manual_time => 1
    ))
  end

  it "renders the edit test_suite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_suites_path(@test_suite), :method => "post" do
      assert_select "input#test_suite_project_id", :name => "test_suite[project_id]"
      assert_select "input#test_suite_name", :name => "test_suite[name]"
      assert_select "input#test_suite_type", :name => "test_suite[type]"
      assert_select "input#test_suite_num_tests", :name => "test_suite[num_tests]"
      assert_select "input#test_suite_num_automated", :name => "test_suite[num_automated]"
      assert_select "input#test_suite_manual_time", :name => "test_suite[manual_time]"
    end
  end
end
