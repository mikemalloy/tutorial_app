require 'spec_helper'

describe "ptests/index.html.erb" do
  before(:each) do
    assign(:ptests, [
      stub_model(Ptest,
        :name => "Name",
        :project_id => 1,
        :metric_id => 1
      ),
      stub_model(Ptest,
        :name => "Name",
        :project_id => 1,
        :metric_id => 1
      )
    ])
  end

  it "renders a list of ptests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
