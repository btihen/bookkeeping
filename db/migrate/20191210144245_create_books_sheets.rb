class CreateBooksSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :books_sheets do |t|
      t.string :sheet_key
      t.belongs_to :plus_effect,  null: false, class_name: 'Books::Category'
      t.belongs_to :minus_effect, null: false, class_name: 'Books::Category'

      t.timestamps

      t.index [:sheet_key],  unique: true

      t.foreign_key :books_categories, column: :plus_effect_id,  index: true
      t.foreign_key :books_categories, column: :minus_effect_id, index: true

    end
  end
end
