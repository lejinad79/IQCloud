class CreateApiaries < ActiveRecord::Migration
  def change
    create_table :apiaries do |t|
      t.string :name
      t.references :apiary_type, index: true
      t.references :apiary_forage_type, index: true
      t.text :description

      t.timestamps
    end
  end
end
