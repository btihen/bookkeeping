class Chart::Account < ApplicationRecord
  belongs_to :account_sub_group
  belongs_to :sub_statement
end
