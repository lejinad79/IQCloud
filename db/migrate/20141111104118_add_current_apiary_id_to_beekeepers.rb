class AddCurrentApiaryIdToBeekeepers < ActiveRecord::Migration
  def change
    add_column :beekeepers, :current_apiary_id, :integer
  end
end
