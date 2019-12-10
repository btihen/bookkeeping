class Books::Category < ApplicationRecord

  has_one :books_sheets
  # has_many  :requested_contacts, class_name: 'Contact',   foreign_key: 'attendee_id'
  # has_many  :initiatives_sent_contacts,     through: :requested_contacts, source: :initiative
  # has_many  :acquired_contacts, class_name:  'Contact',    foreign_key: 'sponsor_id'
  # has_many  :initiatives_received_contacts, through: :acquired_contacts,  source: :initiative

  # https://dev.to/amplifr/postgres-enums-with-rails-4ld0
  enum calculation_effect_enum: {
    plus: 'plus',
    minus: 'minus'
  }

  validates :category_name,   presence: true
  validates :category_effect, inclusion: { in: calculation_effect_enum.values, message: :invalid }
  # validates :category_effect, inclusion: { in: calculation_effect_enum.keys, message: :invalid }
end
