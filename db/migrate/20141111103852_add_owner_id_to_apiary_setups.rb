class AddOwnerIdToApiarySetups < ActiveRecord::Migration
  def change
    add_reference :apiary_setups, :owner, index: true
  end
end
