class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.references :beehive, index: true
      t.string :name
      t.integer :society_strength
      t.integer :the_nature_of_the_bees
      t.boolean :swarm_drive
      t.boolean :a_qulet_shift
      t.boolean :the_forced
      t.references :disease, index: true
      t.integer :number_of_frames_with_brood
      t.integer :number_of_frames_with_honey
      t.integer :number_of_frames_with_pollen
      t.integer :quality_nut
      t.integer :number_of_opened_broods
      t.integer :number_of_closed_broods
      t.text :alert_info
      t.text :note_info
      t.date :inspection_date
      t.integer :hive_condition
      t.boolean :firs_spring_inspection
      t.boolean :inspection_before_winter

      t.timestamps
    end
  end
end
