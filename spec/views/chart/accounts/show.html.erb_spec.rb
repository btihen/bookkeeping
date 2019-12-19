require 'rails_helper'

RSpec.describe "chart/accounts/show", type: :view do
  before(:each) do
    @chart_account = assign(:chart_account, Chart::Account.create!(
      :lang_key => "Lang Key",
      :account_sub_group => nil,
      :sub_statement => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lang Key/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
