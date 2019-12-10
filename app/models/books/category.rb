class Books::Category < ApplicationRecord

  has_one  :books_sheets
  has_many :books_sub_categories

  # https://dev.to/amplifr/postgres-enums-with-rails-4ld0
  enum calculation_effect_enum: {
    plus: 'plus',
    minus: 'minus'
  }

  validates :category_name,   presence: true
  validates :category_effect, inclusion: { in: calculation_effect_enum.values, message: :invalid }
  # validates :category_effect, inclusion: { in: calculation_effect_enum.keys, message: :invalid }
end
