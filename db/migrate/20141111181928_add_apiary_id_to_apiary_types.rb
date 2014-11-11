class AddApiaryIdToApiaryTypes < ActiveRecord::Migration
  def change
    add_reference :apiary_types, :apiary, index: true
  end
end
