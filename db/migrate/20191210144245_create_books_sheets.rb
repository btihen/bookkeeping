class CreateBooksSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :books_sheets do |t|
      t.string :sheet_name
      t.belongs_to :plus_effect,  null: false, class_name: 'Books::Category'
      t.belongs_to :minus_effect, null: false, class_name: 'Books::Category'
      # t.references :plus_effect, null: false, foreign_key: true
      # t.references :minus_effect, null: false, foreign_key: true

      t.timestamps

      t.foreign_key :books_categories, column: :plus_effect_id,  index: true
      t.foreign_key :books_categories, column: :minus_effect_id, index: true

    end
  end
end
