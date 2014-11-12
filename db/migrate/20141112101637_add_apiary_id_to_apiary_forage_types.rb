class AddApiaryIdToApiaryForageTypes < ActiveRecord::Migration
  def change
    add_reference :apiary_forage_types, :apiary, index: true
  end
end
