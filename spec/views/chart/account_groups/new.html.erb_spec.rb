require 'rails_helper'

RSpec.describe "chart/account_groups/new", type: :view do
  before(:each) do
    assign(:chart_account_group, Chart::AccountGroup.new(
      :lang_key => "MyString",
      :account_klass => nil
    ))
  end

  it "renders new chart_account_group form" do
    render

    assert_select "form[action=?][method=?]", chart_account_groups_path, "post" do

      assert_select "input[name=?]", "chart_account_group[lang_key]"

      assert_select "input[name=?]", "chart_account_group[account_klass_id]"
    end
  end
end
