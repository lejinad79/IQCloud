class CreateBadPlaces < ActiveRecord::Migration
  def change
    create_table :bad_places do |t|
      t.string :name
      t.text :description
      t.string :latitude
      t.string :longitude
      t.string :elevation

      t.timestamps
    end
  end
end
