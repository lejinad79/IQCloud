class CreateApiaryForageTypes < ActiveRecord::Migration
  def change
    create_table :apiary_forage_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
