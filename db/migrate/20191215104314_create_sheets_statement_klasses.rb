class CreateSheetsStatementKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :sheets_statement_klasses do |t|
      t.string :lang_key

      t.timestamps
    end
  end
end
