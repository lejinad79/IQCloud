class CreateSystemSetups < ActiveRecord::Migration
  def change
    create_table :system_setups do |t|
      t.string :name
      t.references :apiary, index: true
      t.references :beekeeper, index: true

      t.timestamps
    end
  end
end
