require 'spec_helper'

describe "browsers/index.html.erb" do
  before(:each) do
    assign(:browsers, [
      stub_model(Browser,
        :name => "Name"
      ),
      stub_model(Browser,
        :name => "Name"
      )
    ])
  end

  it "renders a list of browsers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
