class Books::Category < ApplicationRecord
  has_one  :books_sheet
  has_many :books_sub_categories

  validates :category_key,   presence: true
end
