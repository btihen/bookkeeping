require 'rails_helper'

RSpec.describe "chart/account_sub_groups/edit", type: :view do
  before(:each) do
    @chart_account_sub_group = assign(:chart_account_sub_group, Chart::AccountSubGroup.create!(
      :lang_key => "MyString",
      :account_group => nil
    ))
  end

  it "renders the edit chart_account_sub_group form" do
    render

    assert_select "form[action=?][method=?]", chart_account_sub_group_path(@chart_account_sub_group), "post" do

      assert_select "input[name=?]", "chart_account_sub_group[lang_key]"

      assert_select "input[name=?]", "chart_account_sub_group[account_group_id]"
    end
  end
end
