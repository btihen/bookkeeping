require 'rails_helper'

RSpec.describe "chart/account_sub_groups/show", type: :view do
  before(:each) do
    @chart_account_sub_group = assign(:chart_account_sub_group, Chart::AccountSubGroup.create!(
      :lang_key => "Lang Key",
      :account_group => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lang Key/)
    expect(rendered).to match(//)
  end
end
