class CreateBeehives < ActiveRecord::Migration
  def change
    create_table :beehives do |t|
      t.string :name
      t.references :beehive_type, index: true
      t.references :apiary, index: true
      t.references :group, index: true
      t.references :colony_source, index: true
      t.integer :colony_strength
      t.integer :colony_quality
      t.references :supers, index: true
      t.text :notes
      t.string :queen_name
      t.string :seller_first_name
      t.string :seller_last_name
      t.string :place
      t.string :address
      t.string :email_address
      t.string :phone
      t.text :notes
      t.references :from_apiary, index: true
      t.references :from_beehive, index: true
      t.string :race
      t.date :installed

      t.timestamps
    end
  end
end
