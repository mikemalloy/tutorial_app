require 'spec_helper'

describe "ptest_results/show.html.erb" do
  before(:each) do
    @ptest_result = assign(:ptest_result, stub_model(PtestResult,
      :ptest_id => 1,
      :environment => "Environment",
      :device_id => 1,
      :operating_system_id => 1,
      :connection_id => 1,
      :browser_id => 1,
      :values => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Environment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
