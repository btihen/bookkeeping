FactoryBot.define do
  factory :statement_klass , class: 'Sheets::StatementKlass' do
    lang_key                { 'MyStatementKlass' }
    sequence(:s_klass_num)  { |n| "#{n}" }
    s_klass_description     { "S_KlassDescription" }
  end
end
