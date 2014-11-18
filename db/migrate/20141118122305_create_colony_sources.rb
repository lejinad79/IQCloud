class CreateColonySources < ActiveRecord::Migration
  def change
    create_table :colony_sources do |t|
      t.string :name
      t.references :apiary, index: true
      t.integer :system_setup_id

      t.timestamps
    end
  end
end
