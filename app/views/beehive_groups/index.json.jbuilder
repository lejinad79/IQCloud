json.array!(@beehive_groups) do |beehive_group|
  json.extract! beehive_group, :id, :name, :apiary_id, :beehive_group_type_id, :group_type_id, :description, :latitude, :longitude, :elevation, :notes
  json.url beehive_group_url(beehive_group, format: :json)
end
