class CreateBooksSubCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :books_sub_categories do |t|
      t.string :sub_category_key
      # t.references :books_categories, null: false, foreign_key: true
      t.belongs_to :books_category,  null: false, class_name: 'Books::Category'


      t.timestamps

      # t.index [:sub_category_key],  unique: true
      t.foreign_key :books_categories, column: :books_category_id,  index: true

    end
  end
end
