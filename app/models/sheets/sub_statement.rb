class Sheets::SubStatement < ApplicationRecord
  belongs_to :statement, class_name: 'Sheets::Statement', foreign_key: 'sheet_statement_id'

  validates  :lang_key,   presence: true
end
