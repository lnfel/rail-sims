class Address < ApplicationRecord
  belongs_to :municipality
  belongs_to :city
  belongs_to :region
  belongs_to :country
  belongs_to :modified_by_account_type
  belongs_to :modified_by
end
