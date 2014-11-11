json.array!(@apiaries) do |apiary|
  json.extract! apiary, :id, :name, :apiary_type_id, :apiary_forage_type_id, :description
  json.url apiary_url(apiary, format: :json)
end
