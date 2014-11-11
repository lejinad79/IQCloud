class AddLastNameToBeekeepers < ActiveRecord::Migration
  def change
    add_column :beekeepers, :last_name, :string
  end
end
