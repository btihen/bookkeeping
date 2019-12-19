require 'rails_helper'

RSpec.describe "chart/account_sub_groups/index", type: :view do
  before(:each) do
    assign(:chart_account_sub_groups, [
      Chart::AccountSubGroup.create!(
        :lang_key => "Lang Key",
        :account_group => nil
      ),
      Chart::AccountSubGroup.create!(
        :lang_key => "Lang Key",
        :account_group => nil
      )
    ])
  end

  it "renders a list of chart/account_sub_groups" do
    render
    assert_select "tr>td", :text => "Lang Key".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
