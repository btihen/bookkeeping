class CreateBooksCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :books_categories do |t|
      t.string :category_key,   null: false

      t.timestamps
      t.index [:category_key],  unique: true
    end
  end
end
