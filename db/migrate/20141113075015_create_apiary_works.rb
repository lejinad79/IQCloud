class CreateApiaryWorks < ActiveRecord::Migration
  def change
    create_table :apiary_works do |t|
      t.string :name
      t.text :description
      t.text :notes
      t.references :apiary, index: true
      t.references :hives, index: true
      t.references :work_information_type, index: true
      t.date :date

      t.timestamps
    end
  end
end
