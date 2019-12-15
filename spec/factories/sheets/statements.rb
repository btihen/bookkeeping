FactoryBot.define do
  factory :statement, class: 'Sheets::Statement' do
    lang_key        { "MyStatement" }
    increase_klass  { FactoryBot.create(:statement_klass, lang_key: 'plus') }
    decrease_klass  { FactoryBot.create(:statement_klass, lang_key: 'less') }
  end
end
