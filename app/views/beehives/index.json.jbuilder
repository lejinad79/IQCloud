json.array!(@beehives) do |beehive|
  json.extract! beehive, :id, :name, :beehive_type_id, :apiary_id, :group_id, :colony_source_id, :colony_strength, :colony_quality, :supers_id, :notes, :queen_name, :seller_first_name, :seller_last_name, :place, :address, :email_address, :phone, :notes, :from_apiary_id, :from_beehive_id, :race, :installed
  json.url beehive_url(beehive, format: :json)
end
