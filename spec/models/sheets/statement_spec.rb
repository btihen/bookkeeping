require 'rails_helper'

RSpec.describe Sheets::Statement, type: :model do
  let!(:assets)         { FactoryBot.create(:statement_klass, lang_key: 'assets') }
  let!(:claims)         { FactoryBot.create(:statement_klass, lang_key: 'claims') }
  let!(:subject)        { FactoryBot.create(:statement, lang_key: 'balance', increase_klass: assets, decrease_klass: claims) }
  let!(:sub_statement)  { FactoryBot.create(:sub_statement, lang_key: 'liquidity', statement: subject) }

  context "factory" do
    it "creates default successfully" do
      expect(subject.lang_key).not_to    be nil
    end
  end

  context 'relationships' do
    it 'knows its statement' do
      expect(subject.increase_klass.id).to        eq assets.id
      expect(subject.decrease_klass.id).to        eq claims.id
      expect(subject.sub_statements.map(&:id)).to eq [sub_statement.id]
    end
  end

end
