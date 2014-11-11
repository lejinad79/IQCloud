json.array!(@apiary_setups) do |apiary_setup|
  json.extract! apiary_setup, :id
  json.url apiary_setup_url(apiary_setup, format: :json)
end
