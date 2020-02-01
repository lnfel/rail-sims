class Address < ApplicationRecord
  belongs_to :municipality
  belongs_to :city
  belongs_to :region
  belongs_to :country
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validates :house_number, presence: false
  validates :block, presence: false
  validates :phase, presence: false
  validates :building_number, presence: false
  validates :building_name, presence: false
  validates :floor_number, presence: false
  validates :room_number, presence: false
  validates :street_name, presence: false
  validates :subdivision, presence: false
  validates :compound, presence: false
  validates :district, presence: false
  validates :municipality, presence: false
  validates :city, presence: false
  validates :region, presence: false
  validates :country, presence: false
  validates :zip_code, presence: false
  validates :modified_by_account_type, presence: false
  validates :modified_by, presence: false
end
