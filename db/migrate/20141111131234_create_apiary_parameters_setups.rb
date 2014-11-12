class CreateApiaryParametersSetups < ActiveRecord::Migration
  def change
    create_table :apiary_parameters_setups do |t|
      t.references :apiary, index: true
      t.timestamps
    end
  end
end
