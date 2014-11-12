class AddNotesToApiaries < ActiveRecord::Migration
  def change
    add_column :apiaries, :notes, :text
  end
end
