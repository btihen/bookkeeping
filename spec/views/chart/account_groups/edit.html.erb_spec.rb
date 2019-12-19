require 'rails_helper'

RSpec.describe "chart/account_groups/edit", type: :view do
  before(:each) do
    @chart_account_group = assign(:chart_account_group, Chart::AccountGroup.create!(
      :lang_key => "MyString",
      :account_klass => nil
    ))
  end

  it "renders the edit chart_account_group form" do
    render

    assert_select "form[action=?][method=?]", chart_account_group_path(@chart_account_group), "post" do

      assert_select "input[name=?]", "chart_account_group[lang_key]"

      assert_select "input[name=?]", "chart_account_group[account_klass_id]"
    end
  end
end
