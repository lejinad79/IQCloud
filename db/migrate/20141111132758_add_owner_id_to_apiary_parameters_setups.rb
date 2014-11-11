class AddOwnerIdToApiaryParametersSetups < ActiveRecord::Migration
  def change
    add_reference :apiary_parameters_setups, :owner, index: true
  end
end
