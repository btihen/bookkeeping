require 'rails_helper'

RSpec.describe "chart/accounts/new", type: :view do
  before(:each) do
    assign(:chart_account, Chart::Account.new(
      :lang_key => "MyString",
      :account_sub_group => nil,
      :sub_statement => nil
    ))
  end

  it "renders new chart_account form" do
    render

    assert_select "form[action=?][method=?]", chart_accounts_path, "post" do

      assert_select "input[name=?]", "chart_account[lang_key]"

      assert_select "input[name=?]", "chart_account[account_sub_group_id]"

      assert_select "input[name=?]", "chart_account[sub_statement_id]"
    end
  end
end
