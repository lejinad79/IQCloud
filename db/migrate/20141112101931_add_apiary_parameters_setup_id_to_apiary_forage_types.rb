class AddApiaryParametersSetupIdToApiaryForageTypes < ActiveRecord::Migration
  def change
    add_column :apiary_forage_types, :apiary_parameters_setup_id, :integer
  end
end
