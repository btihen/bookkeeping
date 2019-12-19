FactoryBot.define do
  factory :chart_account_sub_group, class: 'Chart::AccountSubGroup' do
    lang_key { "MyString" }
    account_group { nil }
  end
end
