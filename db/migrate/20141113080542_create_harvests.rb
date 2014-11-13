class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.references :beehive, index: true
      t.string :name
      t.references :type, index: true
      t.integer :quantity
      t.references :quantity_unit, index: true
      t.string :value
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
