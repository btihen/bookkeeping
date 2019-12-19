require 'rails_helper'

RSpec.describe "chart/accounts/index", type: :view do
  before(:each) do
    assign(:chart_accounts, [
      Chart::Account.create!(
        :lang_key => "Lang Key",
        :account_sub_group => nil,
        :sub_statement => nil
      ),
      Chart::Account.create!(
        :lang_key => "Lang Key",
        :account_sub_group => nil,
        :sub_statement => nil
      )
    ])
  end

  it "renders a list of chart/accounts" do
    render
    assert_select "tr>td", :text => "Lang Key".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
