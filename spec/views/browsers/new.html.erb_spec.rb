require 'spec_helper'

describe "browsers/new.html.erb" do
  before(:each) do
    assign(:browser, stub_model(Browser,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new browser form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => browsers_path, :method => "post" do
      assert_select "input#browser_name", :name => "browser[name]"
    end
  end
end
