require 'spec_helper'

describe "performance_tests/new.html.erb" do
  before(:each) do
    assign(:performance_test, stub_model(PerformanceTest,
      :name => "MyString",
      :measure1name => "MyString",
      :measure2name => "MyString",
      :measure3name => "MyString",
      :measure4name => "MyString",
      :measure5name => "MyString"
    ).as_new_record)
  end

  it "renders new performance_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => performance_tests_path, :method => "post" do
      assert_select "input#performance_test_name", :name => "performance_test[name]"
      assert_select "input#performance_test_measure1name", :name => "performance_test[measure1name]"
      assert_select "input#performance_test_measure2name", :name => "performance_test[measure2name]"
      assert_select "input#performance_test_measure3name", :name => "performance_test[measure3name]"
      assert_select "input#performance_test_measure4name", :name => "performance_test[measure4name]"
      assert_select "input#performance_test_measure5name", :name => "performance_test[measure5name]"
    end
  end
end
