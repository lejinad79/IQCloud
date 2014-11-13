json.array!(@locations) do |location|
  json.extract! location, :id, :title, :description, :latitude, :longitude, :elevation, :country_id, :forages_id, :private_location
  json.url location_url(location, format: :json)
end
