class Sheets::Statement < ApplicationRecord
  # consider polymorphic relation to StatementKlass
  belongs_to :increase_klass, class_name: 'Sheets::StatementKlass', foreign_key: 'increase_klass_id'
  belongs_to :decrease_klass, class_name: 'Sheets::StatementKlass', foreign_key: 'decrease_klass_id'

  has_many   :sub_statements, class_name: 'Sheets::SubStatement',   foreign_key: 'sheet_statement_id'

  validates  :lang_key,       presence: true
  validates  :increase_klass, presence: true
  validates  :decrease_klass, presence: true
end
