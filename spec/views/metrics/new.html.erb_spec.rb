require 'spec_helper'

describe "metrics/new.html.erb" do
  before(:each) do
    assign(:metric, stub_model(Metric,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new metric form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => metrics_path, :method => "post" do
      assert_select "input#metric_name", :name => "metric[name]"
    end
  end
end
