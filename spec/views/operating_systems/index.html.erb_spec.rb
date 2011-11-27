require 'spec_helper'

describe "operating_systems/index.html.erb" do
  before(:each) do
    assign(:operating_systems, [
      stub_model(OperatingSystem,
        :name => "Name"
      ),
      stub_model(OperatingSystem,
        :name => "Name"
      )
    ])
  end

  it "renders a list of operating_systems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
