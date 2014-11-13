json.array!(@inspections) do |inspection|
  json.extract! inspection, :id, :beehive_id, :name, :society_strength, :the_nature_of_the_bees, :swarm_drive, :a_qulet_shift, :the_forced, :disease_id, :number_of_frames_with_brood, :number_of_frames_with_honey, :number_of_frames_with_pollen, :quality_nut, :number_of_opened_broods, :number_of_closed_broods, :alert_info, :note_info, :inspection_date, :hive_condition, :firs_spring_inspection, :inspection_before_winter
  json.url inspection_url(inspection, format: :json)
end
