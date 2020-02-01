class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :house_number
      t.string :block
      t.string :phase
      t.integer :building_number
      t.string :building_name
      t.integer :floor_number
      t.string :room_number
      t.string :street_name
      t.string :subdivision
      t.string :compound
      t.string :district
      t.references :municipality, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.string :zip_code
      t.references :modified_by_account_type, null: false, foreign_key: true
      t.references :modified_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
