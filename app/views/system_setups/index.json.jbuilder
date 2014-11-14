json.array!(@system_setups) do |system_setup|
  json.extract! system_setup, :id, :name, :apiary_id, :beekeeper_id
  json.url system_setup_url(system_setup, format: :json)
end
