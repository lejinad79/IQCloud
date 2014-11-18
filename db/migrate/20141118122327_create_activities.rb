class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.references :apiary, index: true
      t.integer :system_setup_id

      t.timestamps
    end
  end
end
