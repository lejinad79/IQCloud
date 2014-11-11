class CreateApiaryParametersSetups < ActiveRecord::Migration
  def change
    create_table :apiary_parameters_setups do |t|

      t.timestamps
    end
  end
end
