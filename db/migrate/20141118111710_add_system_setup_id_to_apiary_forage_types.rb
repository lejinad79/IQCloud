class AddSystemSetupIdToApiaryForageTypes < ActiveRecord::Migration
  def change
    add_column :apiary_forage_types, :system_setup_id, :integer
  end
end
