class Books::Sheet < ApplicationRecord
  belongs_to :plus_effect,  class_name: 'Books::Category', foreign_key: 'plus_effect_id'
  belongs_to :minus_effect, class_name: 'Books::Category', foreign_key: 'minus_effect_id'

  validates :sheet_key,    presence: true
  validates :plus_effect,  presence: true
  validates :minus_effect, presence: true
end
