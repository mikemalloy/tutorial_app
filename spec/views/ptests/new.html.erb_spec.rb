require 'spec_helper'

describe "ptests/new.html.erb" do
  before(:each) do
    assign(:ptest, stub_model(Ptest,
      :name => "MyString",
      :project_id => 1,
      :metric_id => 1
    ).as_new_record)
  end

  it "renders new ptest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ptests_path, :method => "post" do
      assert_select "input#ptest_name", :name => "ptest[name]"
      assert_select "input#ptest_project_id", :name => "ptest[project_id]"
      assert_select "input#ptest_metric_id", :name => "ptest[metric_id]"
    end
  end
end
