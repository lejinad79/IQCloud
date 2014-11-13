class CreateEconomies < ActiveRecord::Migration
  def change
    create_table :economies do |t|
      t.references :beehive, index: true
      t.string :name
      t.references :category, index: true
      t.references :type, index: true
      t.text :description
      t.string :value
      t.date :date

      t.timestamps
    end
  end
end
