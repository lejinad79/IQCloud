class AddSystemSetupIdToBeehiveGroupTypes < ActiveRecord::Migration
  def change
    add_column :beehive_group_types, :system_setup_id, :integer
  end
end
