require 'rails_helper'

RSpec.describe Sheets::StatementKlass, type: :model do
  let(:subject)     { FactoryBot.create(:statement_klass) }
  let!(:assets)     { FactoryBot.create(:statement_klass, lang_key: 'assets') }
  let!(:claims)     { FactoryBot.create(:statement_klass, lang_key: 'claims') }
  let!(:statement)  { FactoryBot.create(:statement, lang_key: 'balance', increase_klass: assets, decrease_klass: claims) }

  context 'factory' do
    it 'creates default successfully' do
      expect(subject.lang_key).not_to   be nil
    end
  end

  context 'relationships' do
    it 'knows its statement' do
      expect(assets.statement.id).to    eq statement.id
      expect(assets.effect).to          eq 'increase'

      expect(claims.statement.id).to    eq statement.id
      expect(claims.effect).to          eq 'decrease'
    end
  end
end
