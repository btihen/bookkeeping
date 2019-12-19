require 'rails_helper'

RSpec.describe "chart/account_groups/index", type: :view do
  before(:each) do
    assign(:chart_account_groups, [
      Chart::AccountGroup.create!(
        :lang_key => "Lang Key",
        :account_klass => nil
      ),
      Chart::AccountGroup.create!(
        :lang_key => "Lang Key",
        :account_klass => nil
      )
    ])
  end

  it "renders a list of chart/account_groups" do
    render
    assert_select "tr>td", :text => "Lang Key".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
