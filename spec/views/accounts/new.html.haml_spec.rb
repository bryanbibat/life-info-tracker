require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :description => "MyText",
      :initial_value => "9.99"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "textarea#account_description", :name => "account[description]"
      assert_select "input#account_initial_value", :name => "account[initial_value]"
    end
  end
end
