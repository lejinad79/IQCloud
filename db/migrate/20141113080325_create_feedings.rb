class CreateFeedings < ActiveRecord::Migration
  def change
    create_table :feedings do |t|
      t.references :beehive, index: true
      t.string :name
      t.references :food_type, index: true
      t.integer :quantity
      t.references :quantity_unit, index: true
      t.references :supplements, index: true
      t.date :date
      t.text :notes
      t.string :value

      t.timestamps
    end
  end
end
