json.array!(@apiary_parameters_setups) do |apiary_parameters_setup|
  json.extract! apiary_parameters_setup, :id
  json.url apiary_parameters_setup_url(apiary_parameters_setup, format: :json)
end
