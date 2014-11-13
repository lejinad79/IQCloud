json.array!(@feedings) do |feeding|
  json.extract! feeding, :id, :beehive_id, :name, :food_type_id, :quantity, :quantity_unit_id, :supplements_id, :date, :notes, :value
  json.url feeding_url(feeding, format: :json)
end
