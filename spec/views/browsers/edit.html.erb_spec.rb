require 'spec_helper'

describe "browsers/edit.html.erb" do
  before(:each) do
    @browser = assign(:browser, stub_model(Browser,
      :name => "MyString"
    ))
  end

  it "renders the edit browser form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => browsers_path(@browser), :method => "post" do
      assert_select "input#browser_name", :name => "browser[name]"
    end
  end
end
