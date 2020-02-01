class Student < ApplicationRecord
  belongs_to :address
  belongs_to :civil_status
  belongs_to :gender
  belongs_to :guardian_relationship
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validate :student_id_prefix, presence: false
  validate :student_id, presence: false
  validate :first_name, presence: false
  validate :last_name, presence: false
  validate :middle_name, presence: false
  validate :name_prefix, presence: false
  validate :name_suffix, presence: false
  validate :status, presence: false
  validate :address, presence: false
  validate :telephone_number, presence: false
  validate :mobile_number, presence: false
  validate :email, presence: false
  validate :birthdate, presence: false
  validate :birthplace, presence: false
  validate :civil_status, presence: false
  validate :gender, presence: false
  validate :religion, presence: false
  validate :nationality, presence: false
  validate :blood_type, presence: false
  validate :weight, presence: false
  validate :height, presence: false
  validate :father_name, presence: false
  validate :father_last_name, presence: false
  validate :father_middle_name, presence: false
  validate :father_contact_number, presence: false
  validate :mother_name, presence: false
  validate :mother_maiden_last_name, presence: false
  validate :mother_maiden_middle_name, presence: false
  validate :mother_contact_number, presence: false
  validate :guardian_fullname, presence: false
  validate :guardian_relationship, presence: false
  validate :guardian_contact_number, presence: false
  validate :modified_by_account_type, presence: false
  validate :modified_by, presence: false
end
