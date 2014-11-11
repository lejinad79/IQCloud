class AddFirstNameToBeekeepers < ActiveRecord::Migration
  def change
    add_column :beekeepers, :first_name, :string
  end
end
