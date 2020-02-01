class Student < ApplicationRecord
  belongs_to :address
  belongs_to :civil_status
  belongs_to :gender
  belongs_to :guardian_relationship
  belongs_to :modified_by_account_type
  belongs_to :modified_by
end
