class Student < ApplicationRecord
  belongs_to :address
  belongs_to :civil_status
  belongs_to :gender
  belongs_to :guardian_relationship
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validate :student_id_prefix, allow_nil: true
  validate :student_id, allow_nil: true
  validate :first_name, allow_nil: true
  validate :last_name, allow_nil: true
  validate :middle_name, allow_nil: true
  validate :name_prefix, allow_nil: true
  validate :name_suffix, allow_nil: true
  validate :status, allow_nil: true
  validate :address, allow_nil: true
  validate :telephone_number, allow_nil: true
  validate :mobile_number, allow_nil: true
  validate :email, allow_nil: true
  validate :birthdate, allow_nil: true
  validate :birthplace, allow_nil: true
  validate :civil_status, allow_nil: true
  validate :gender, allow_nil: true
  validate :religion, allow_nil: true
  validate :nationality, allow_nil: true
  validate :blood_type, allow_nil: true
  validate :weight, allow_nil: true
  validate :height, allow_nil: true
  validate :father_name, allow_nil: true
  validate :father_last_name, allow_nil: true
  validate :father_middle_name, allow_nil: true
  validate :father_contact_number, allow_nil: true
  validate :mother_name, allow_nil: true
  validate :mother_maiden_last_name, allow_nil: true
  validate :mother_maiden_middle_name, allow_nil: true
  validate :mother_contact_number, allow_nil: true
  validate :guardian_fullname, allow_nil: true
  validate :guardian_relationship, allow_nil: true
  validate :guardian_contact_number, allow_nil: true
  validate :modified_by_account_type, allow_nil: true
  validate :modified_by, allow_nil: true
end
