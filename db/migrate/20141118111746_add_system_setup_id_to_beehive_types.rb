class AddSystemSetupIdToBeehiveTypes < ActiveRecord::Migration
  def change
    add_column :beehive_types, :system_setup_id, :integer
  end
end
