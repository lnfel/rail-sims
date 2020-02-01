class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :house_number, allow_nil: true
      t.string :block, allow_nil: true
      t.string :phase, allow_nil: true
      t.integer :building_number, allow_nil: true
      t.string :building_name, allow_nil: true
      t.integer :floor_number, allow_nil: true
      t.string :room_number, allow_nil: true
      t.string :street_name, allow_nil: true
      t.string :subdivision, allow_nil: true
      t.string :compound, allow_nil: true
      t.string :district, allow_nil: true
      t.references :municipality, foreign_key: true, allow_nil: true
      t.references :city, foreign_key: true, allow_nil: true
      t.references :region, foreign_key: true, allow_nil: true
      t.references :country, foreign_key: true, allow_nil: true
      t.string :zip_code, allow_nil: true
      t.references :modified_by_account_type, foreign_key: true, allow_nil: true
      t.references :modified_by, foreign_key: true, allow_nil: true

      t.timestamps
    end
  end
end
