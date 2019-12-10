class CreateBooksSubCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :books_sub_categories do |t|
      t.string :sub_category_name
      t.references :books_category, null: false, foreign_key: true

      t.timestamps

      t.index [:sub_category_name],  unique: true
    end
  end
end
