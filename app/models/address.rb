class Address < ApplicationRecord
  belongs_to :municipality
  belongs_to :city
  belongs_to :region
  belongs_to :country
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validates :house_number, allow_nil: true
  validates :block, allow_nil: true
  validates :phase, allow_nil: true
  validates :building_number, allow_nil: true
  validates :building_name, allow_nil: true
  validates :floor_number, allow_nil: true
  validates :room_number, allow_nil: true
  validates :street_name, allow_nil: true
  validates :subdivision, allow_nil: true
  validates :compound, allow_nil: true
  validates :district, allow_nil: true
  validates :municipality, allow_nil: true
  validates :city, allow_nil: true
  validates :region, allow_nil: true
  validates :country, allow_nil: true
  validates :zip_code, allow_nil: true
  validates :modified_by_account_type, allow_nil: true
  validates :modified_by, allow_nil: true
end
