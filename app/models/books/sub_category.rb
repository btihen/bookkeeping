class Books::SubCategory < ApplicationRecord
  belongs_to :books_category, class_name: 'Books::Category', foreign_key: 'books_category_id'

end
