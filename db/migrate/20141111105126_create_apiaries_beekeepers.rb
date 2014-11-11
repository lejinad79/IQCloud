class CreateApiariesBeekeepers < ActiveRecord::Migration
  def change
    create_table :apiaries_beekeepers do |t|
      t.integer :apiary_id
      t.integer :beekeeper_id
    end
  end
end
