class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_id_prefix, allow_nil: true
      t.string :student_id, allow_nil: true
      t.string :first_name, allow_nil: true
      t.string :last_name, allow_nil: true
      t.string :middle_name, allow_nil: true
      t.string :name_prefix, allow_nil: true
      t.string :name_suffix, allow_nil: true
      t.string :status, allow_nil: true
      t.references :address, foreign_key: true, allow_nil: true
      t.string :telephone_number, allow_nil: true
      t.integer :mobile_number, array: true, default: [], allow_nil: true
      t.string :email, allow_nil: true
      t.date :birthdate, allow_nil: true
      t.string :birthplace, allow_nil: true
      t.references :civil_status, foreign_key: true, allow_nil: true
      t.references :gender, foreign_key: true, allow_nil: true
      t.string :religion, allow_nil: true
      t.string :nationality, allow_nil: true
      t.string :blood_type, allow_nil: true
      t.integer :weight, allow_nil: true
      t.float :height, allow_nil: true
      t.string :father_name, allow_nil: true
      t.string :father_last_name, allow_nil: true
      t.string :father_middle_name, allow_nil: true
      t.integer :father_contact_number, array: true, default: [], allow_nil: true
      t.string :mother_name, allow_nil: true
      t.string :mother_maiden_last_name, allow_nil: true
      t.string :mother_maiden_middle_name, allow_nil: true
      t.integer :mother_contact_number, array: true, default: [], allow_nil: true
      t.string :guardian_fullname, allow_nil: true
      t.references :guardian_relationship, foreign_key: true, allow_nil: true
      t.integer :guardian_contact_number, array: true, default: [], allow_nil: true
      t.references :modified_by_account_type, foreign_key: true, allow_nil: true
      t.references :modified_by, foreign_key: true, allow_nil: true

      t.timestamps
    end
  end
end
