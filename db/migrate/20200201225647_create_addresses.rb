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
      t.references :municipality, foreign_key: true
      t.references :city, foreign_key: true
      t.references :region, foreign_key: true
      t.references :country, foreign_key: true
      t.string :zip_code
      t.references :modified_by_account_type, foreign_key: true
      t.references :modified_by, foreign_key: true

      t.timestamps
    end
  end
end
