class Address < ApplicationRecord
  belongs_to :municipality
  belongs_to :city
  belongs_to :region
  belongs_to :country
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validate :house_number, allow_nil: true
  validate :block, allow_nil: true
  validate :phase, allow_nil: true
  validate :building_number, allow_nil: true
  validate :building_name, allow_nil: true
  validate :floor_number, allow_nil: true
  validate :room_number, allow_nil: true
  validate :street_name, allow_nil: true
  validate :subdivision, allow_nil: true
  validate :compound, allow_nil: true
  validate :district, allow_nil: true
  validate :municipality, allow_nil: true
  validate :city, allow_nil: true
  validate :region, allow_nil: true
  validate :country, allow_nil: true
  validate :zip_code, allow_nil: true
  validate :modified_by_account_type, allow_nil: true
  validate :modified_by, allow_nil: true
end
