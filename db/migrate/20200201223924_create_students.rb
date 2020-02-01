class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_id_prefix
      t.string :student_id
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :name_prefix
      t.string :name_suffix
      t.string :status
      t.references :address, null: false, foreign_key: true
      t.string :telephone_number
      t.integer :mobile_number, array: true, default: []
      t.string :email
      t.date :birthdate
      t.string :birthplace
      t.references :civil_status, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.string :religion
      t.string :nationality
      t.string :blood_type
      t.integer :weight
      t.float :height
      t.string :father_name
      t.string :father_last_name
      t.string :father_middle_name
      t.integer :father_contact_number, array: true, default: []
      t.string :mother_name
      t.string :mother_maiden_last_name
      t.string :mother_maiden_middle_name
      t.integer :mother_contact_number, array: true, default: []
      t.string :guardian_fullname
      t.references :guardian_relationship, null: false, foreign_key: true
      t.integer :guardian_contact_number, array: true, default: []
      t.references :modified_by_account_type, null: false, foreign_key: true
      t.references :modified_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
