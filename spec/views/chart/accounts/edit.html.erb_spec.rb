require 'rails_helper'

RSpec.describe "chart/accounts/edit", type: :view do
  before(:each) do
    @chart_account = assign(:chart_account, Chart::Account.create!(
      :lang_key => "MyString",
      :account_sub_group => nil,
      :sub_statement => nil
    ))
  end

  it "renders the edit chart_account form" do
    render

    assert_select "form[action=?][method=?]", chart_account_path(@chart_account), "post" do

      assert_select "input[name=?]", "chart_account[lang_key]"

      assert_select "input[name=?]", "chart_account[account_sub_group_id]"

      assert_select "input[name=?]", "chart_account[sub_statement_id]"
    end
  end
end
