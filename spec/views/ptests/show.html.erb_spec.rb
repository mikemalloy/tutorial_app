require 'spec_helper'

describe "ptests/show.html.erb" do
  before(:each) do
    @ptest = assign(:ptest, stub_model(Ptest,
      :name => "Name",
      :project_id => 1,
      :metric_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
