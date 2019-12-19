FactoryBot.define do
  factory :sub_statement, class: 'Sheets::SubStatement' do
    lang_key              { "MySubStatement" }
    sequence(:s_sub_num)  { |n| "#{n}" }
    s_sub_description     { "S_StateDescription" }
    statement             { FactoryBot.create :statement }
  end
end
