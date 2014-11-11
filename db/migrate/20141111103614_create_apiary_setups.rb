class CreateApiarySetups < ActiveRecord::Migration
  def change
    create_table :apiary_setups do |t|

      t.timestamps
    end
  end
end
