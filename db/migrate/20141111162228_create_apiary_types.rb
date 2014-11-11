class CreateApiaryTypes < ActiveRecord::Migration
  def change
    create_table :apiary_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
