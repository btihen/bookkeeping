class Sheets::StatementKlass < ApplicationRecord
  # consider polymorphic relation to Statement
  has_one   :statement_increase, class_name: 'Sheets::Statement', foreign_key: 'increase_klass_id'
  has_one   :statement_decrease, class_name: 'Sheets::Statement', foreign_key: 'decrease_klass_id'

  validates :lang_key,   presence: true
  
  def statement
    statement_increase || statement_decrease
  end

  def effect
    return 'increase' if statement_increase
    'decrease'
  end
end
