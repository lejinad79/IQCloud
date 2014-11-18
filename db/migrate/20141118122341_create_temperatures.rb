class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.string :name
      t.references :apiary, index: true
      t.integer :system_setup_id

      t.timestamps
    end
  end
end
