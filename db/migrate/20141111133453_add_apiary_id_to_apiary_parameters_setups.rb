class AddApiaryIdToApiaryParametersSetups < ActiveRecord::Migration
  def change
    add_reference :apiary_parameters_setups, :apiary, index: true
  end
end
