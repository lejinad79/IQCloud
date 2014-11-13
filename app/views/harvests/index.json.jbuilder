json.array!(@harvests) do |harvest|
  json.extract! harvest, :id, :beehive_id, :name, :type_id, :quantity, :quantity_unit_id, :value, :date, :description
  json.url harvest_url(harvest, format: :json)
end
