class AddSystemSetupIdToApiaryTypes < ActiveRecord::Migration
  def change
    add_column :apiary_types, :system_setup_id, :integer
  end
end
