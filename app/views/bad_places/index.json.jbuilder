json.array!(@bad_places) do |bad_place|
  json.extract! bad_place, :id, :name, :description, :latitude, :longitude, :elevation
  json.url bad_place_url(bad_place, format: :json)
end
