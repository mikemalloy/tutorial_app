require 'spec_helper'

describe "connections/edit.html.erb" do
  before(:each) do
    @connection = assign(:connection, stub_model(Connection,
      :name => "MyString"
    ))
  end

  it "renders the edit connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => connections_path(@connection), :method => "post" do
      assert_select "input#connection_name", :name => "connection[name]"
    end
  end
end
