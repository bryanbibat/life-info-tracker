require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :name => "MyString",
      :description => "MyText",
      :amount => "9.99",
      :source_id => 1,
      :destination_id => 1,
      :category => nil
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path, :method => "post" do
      assert_select "input#transaction_name", :name => "transaction[name]"
      assert_select "textarea#transaction_description", :name => "transaction[description]"
      assert_select "input#transaction_amount", :name => "transaction[amount]"
      assert_select "input#transaction_source_id", :name => "transaction[source_id]"
      assert_select "input#transaction_destination_id", :name => "transaction[destination_id]"
      assert_select "input#transaction_category", :name => "transaction[category]"
    end
  end
end
