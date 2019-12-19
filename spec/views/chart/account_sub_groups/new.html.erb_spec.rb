require 'rails_helper'

RSpec.describe "chart/account_sub_groups/new", type: :view do
  before(:each) do
    assign(:chart_account_sub_group, Chart::AccountSubGroup.new(
      :lang_key => "MyString",
      :account_group => nil
    ))
  end

  it "renders new chart_account_sub_group form" do
    render

    assert_select "form[action=?][method=?]", chart_account_sub_groups_path, "post" do

      assert_select "input[name=?]", "chart_account_sub_group[lang_key]"

      assert_select "input[name=?]", "chart_account_sub_group[account_group_id]"
    end
  end
end
