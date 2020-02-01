class Student < ApplicationRecord
  belongs_to :address
  belongs_to :civil_status
  belongs_to :gender
  belongs_to :guardian_relationship
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validates :student_id_prefix, allow_nil: true
  validates :student_id, allow_nil: true
  validates :first_name, allow_nil: true
  validates :last_name, allow_nil: true
  validates :middle_name, allow_nil: true
  validates :name_prefix, allow_nil: true
  validates :name_suffix, allow_nil: true
  validates :status, allow_nil: true
  validates :address, allow_nil: true
  validates :telephone_number, allow_nil: true
  validates :mobile_number, allow_nil: true
  validates :email, allow_nil: true
  validates :birthdate, allow_nil: true
  validates :birthplace, allow_nil: true
  validates :civil_status, allow_nil: true
  validates :gender, allow_nil: true
  validates :religion, allow_nil: true
  validates :nationality, allow_nil: true
  validates :blood_type, allow_nil: true
  validates :weight, allow_nil: true
  validates :height, allow_nil: true
  validates :father_name, allow_nil: true
  validates :father_last_name, allow_nil: true
  validates :father_middle_name, allow_nil: true
  validates :father_contact_number, allow_nil: true
  validates :mother_name, allow_nil: true
  validates :mother_maiden_last_name, allow_nil: true
  validates :mother_maiden_middle_name, allow_nil: true
  validates :mother_contact_number, allow_nil: true
  validates :guardian_fullname, allow_nil: true
  validates :guardian_relationship, allow_nil: true
  validates :guardian_contact_number, allow_nil: true
  validates :modified_by_account_type, allow_nil: true
  validates :modified_by, allow_nil: true
end
