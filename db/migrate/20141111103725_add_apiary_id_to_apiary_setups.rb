class AddApiaryIdToApiarySetups < ActiveRecord::Migration
  def change
    add_reference :apiary_setups, :apiary, index: true
  end
end
