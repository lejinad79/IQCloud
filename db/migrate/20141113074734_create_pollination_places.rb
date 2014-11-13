class CreatePollinationPlaces < ActiveRecord::Migration
  def change
    create_table :pollination_places do |t|
      t.string :farmer_first_name
      t.string :farmer_last_name
      t.string :farm_name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.string :zip
      t.string :email_address
      t.references :plant, index: true
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :latitude
      t.string :longitude
      t.string :elevation

      t.timestamps
    end
  end
end
