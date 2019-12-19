FactoryBot.define do
  factory :chart_account, class: 'Chart::Account' do
    lang_key { "MyString" }
    account_sub_group { nil }
    sub_statement { nil }
  end
end
