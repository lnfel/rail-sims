class Address < ApplicationRecord
  belongs_to :municipality
  belongs_to :city
  belongs_to :region
  belongs_to :country
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validate :house_number, presence: false
  validate :block, presence: false
  validate :phase, presence: false
  validate :building_number, presence: false
  validate :building_name, presence: false
  validate :floor_number, presence: false
  validate :room_number, presence: false
  validate :street_name, presence: false
  validate :subdivision, presence: false
  validate :compound, presence: false
  validate :district, presence: false
  validate :municipality, presence: false
  validate :city, presence: false
  validate :region, presence: false
  validate :country, presence: false
  validate :zip_code, presence: false
  validate :modified_by_account_type, presence: false
  validate :modified_by, presence: false
end
