require 'rails_helper'

RSpec.describe "chart/account_groups/show", type: :view do
  before(:each) do
    @chart_account_group = assign(:chart_account_group, Chart::AccountGroup.create!(
      :lang_key => "Lang Key",
      :account_klass => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lang Key/)
    expect(rendered).to match(//)
  end
end
