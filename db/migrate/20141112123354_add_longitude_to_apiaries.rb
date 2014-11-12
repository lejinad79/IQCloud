class AddLongitudeToApiaries < ActiveRecord::Migration
  def change
    add_column :apiaries, :longitude, :string
  end
end
