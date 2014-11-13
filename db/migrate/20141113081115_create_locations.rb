class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.text :description
      t.string :latitude
      t.string :longitude
      t.string :elevation
      t.references :country, index: true
      t.references :forages, index: true
      t.boolean :private_location

      t.timestamps
    end
  end
end
