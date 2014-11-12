class CreateBeehiveTypes < ActiveRecord::Migration
  def change
    create_table :beehive_types do |t|
      t.string :name
      t.references :apiary, index: true
      t.integer :apiary_parameters_setup_id

      t.timestamps
    end
  end
end
