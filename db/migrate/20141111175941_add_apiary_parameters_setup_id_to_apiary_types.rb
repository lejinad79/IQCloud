class AddApiaryParametersSetupIdToApiaryTypes < ActiveRecord::Migration
  def change
    add_column :apiary_types, :apiary_parameters_setup_id, :integer
  end
end
