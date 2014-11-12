class AddLatitudeToApiaries < ActiveRecord::Migration
  def change
    add_column :apiaries, :latitude, :string
  end
end
