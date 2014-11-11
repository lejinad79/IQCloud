class AddOwnerIdToApiaries < ActiveRecord::Migration
  def change
    add_reference :apiaries, :owner, index: true
  end
end
