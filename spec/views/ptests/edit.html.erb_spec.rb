require 'spec_helper'

describe "ptests/edit.html.erb" do
  before(:each) do
    @ptest = assign(:ptest, stub_model(Ptest,
      :name => "MyString",
      :project_id => 1,
      :metric_id => 1
    ))
  end

  it "renders the edit ptest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ptests_path(@ptest), :method => "post" do
      assert_select "input#ptest_name", :name => "ptest[name]"
      assert_select "input#ptest_project_id", :name => "ptest[project_id]"
      assert_select "input#ptest_metric_id", :name => "ptest[metric_id]"
    end
  end
end
