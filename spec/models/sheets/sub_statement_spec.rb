require 'rails_helper'

RSpec.describe Sheets::SubStatement, type: :model do
  let!(:assets)         { FactoryBot.create(:statement_klass, lang_key: 'assets') }
  let!(:claims)         { FactoryBot.create(:statement_klass, lang_key: 'claims') }
  let!(:statement)      { FactoryBot.create(:statement, lang_key: 'balance', increase_klass: assets, decrease_klass: claims) }
  let!(:subject)        { FactoryBot.create(:sub_statement, lang_key: 'liquidity', statement: statement) }

  context "factory" do
    it "creates default successfully" do
      expect(subject.lang_key).not_to     be nil
    end
  end

  context 'relationships' do
    it 'knows its statement' do
      expect(subject.statement.id).to     eq statement.id
    end
  end

end
