class CreateSheetsSubStatements < ActiveRecord::Migration[6.0]
  def change
    create_table :sheets_sub_statements do |t|
      t.string :lang_key
      # t.references :sheet_statement, null: false, foreign_key: true
      t.belongs_to :sheet_statement,  null: false, class_name: 'Sheets::Statement'

      t.timestamps

      t.index [:lang_key],  unique: true
      t.foreign_key :sheets_statements, column: :sheet_statement_id, index: true
    end
  end
end
