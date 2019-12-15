class CreateSheetsStatements < ActiveRecord::Migration[6.0]
  def change
    create_table :sheets_statements do |t|
      t.string :lang_key
      # t.references :increase_klass, null: false, foreign_key: true
      # t.references :decrease_klass, null: false, foreign_key: true
      t.belongs_to :increase_klass, null: false, class_name: 'Sheets::StatementKlass'
      t.belongs_to :decrease_klass, null: false, class_name: 'Sheets::StatementKlass'

      t.timestamps

      t.index [:lang_key],  unique: true

      t.foreign_key :sheets_statement_klasses, column: :increase_klass_id, index: true
      t.foreign_key :sheets_statement_klasses, column: :decrease_klass_id, index: true

    end
  end
end
