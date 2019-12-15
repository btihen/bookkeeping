FactoryBot.define do
  factory :sub_statement, class: 'Sheets::SubStatement' do
    lang_key    { "MySubStatement" }
    statement   { FactoryBot.create :statement }
  end
end
