FactoryBot.define do
  factory :chart_account_group, class: 'Chart::AccountGroup' do
    lang_key { "MyString" }
    account_klass { nil }
  end
end
