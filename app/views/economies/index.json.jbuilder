json.array!(@economies) do |economy|
  json.extract! economy, :id, :beehive_id, :name, :category_id, :type_id, :description, :value, :date
  json.url economy_url(economy, format: :json)
end
