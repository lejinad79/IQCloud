class AddNameToApiaryParametersSetups < ActiveRecord::Migration
  def change
    add_column :apiary_parameters_setups, :name, :string
  end
end
