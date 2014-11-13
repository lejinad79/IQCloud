class CreateBeehiveGroups < ActiveRecord::Migration
  def change
    create_table :beehive_groups do |t|
      t.string :name
      t.references :apiary, index: true
      t.references :beehive_group_type, index: true
      t.references :group_type, index: true
      t.text :description
      t.string :latitude
      t.string :longitude
      t.string :elevation
      t.text :notes

      t.timestamps
    end
  end
end
