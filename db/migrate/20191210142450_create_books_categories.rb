class CreateBooksCategories < ActiveRecord::Migration[6.0]
  def up 
    execute <<-SQL
      CREATE TYPE category_effect_enum AS ENUM ('plus', 'minus');
    SQL
    create_table :books_categories do |t|
      t.string :category_name
      t.string :category_effect, :category_effect_enum

      t.timestamps
    end
  end
  def down
    drop_table  :books_categories
    execute <<-SQL
      DROP TYPE category_effect_enum;
    SQL
  end
end
