class Student < ApplicationRecord
  belongs_to :address
  belongs_to :civil_status
  belongs_to :gender
  belongs_to :guardian_relationship
  belongs_to :modified_by_account_type
  belongs_to :modified_by

  validates :student_id_prefix, presence: false
  validates :student_id, presence: false
  validates :first_name, presence: false
  validates :last_name, presence: false
  validates :middle_name, presence: false
  validates :name_prefix, presence: false
  validates :name_suffix, presence: false
  validates :status, presence: false
  validates :address, presence: false
  validates :telephone_number, presence: false
  validates :mobile_number, presence: false
  validates :email, presence: false
  validates :birthdate, presence: false
  validates :birthplace, presence: false
  validates :civil_status, presence: false
  validates :gender, presence: false
  validates :religion, presence: false
  validates :nationality, presence: false
  validates :blood_type, presence: false
  validates :weight, presence: false
  validates :height, presence: false
  validates :father_name, presence: false
  validates :father_last_name, presence: false
  validates :father_middle_name, presence: false
  validates :father_contact_number, presence: false
  validates :mother_name, presence: false
  validates :mother_maiden_last_name, presence: false
  validates :mother_maiden_middle_name, presence: false
  validates :mother_contact_number, presence: false
  validates :guardian_fullname, presence: false
  validates :guardian_relationship, presence: false
  validates :guardian_contact_number, presence: false
  validates :modified_by_account_type, presence: false
  validates :modified_by, presence: false
end
