FactoryBot.define do
  factory :statement, class: 'Sheets::Statement' do
    lang_key                { "MyStatement" }
    sequence(:s_state_num)  { |n| "#{n}" }
    s_state_description     { "S_StateDescription" }
    increase_klass          { FactoryBot.create(:statement_klass, lang_key: 'plus') }
    decrease_klass          { FactoryBot.create(:statement_klass, lang_key: 'less') }
  end
end
