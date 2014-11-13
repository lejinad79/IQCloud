json.array!(@pollination_places) do |pollination_place|
  json.extract! pollination_place, :id, :farmer_first_name, :farmer_last_name, :farm_name, :address, :city, :state, :country, :phone, :zip, :email_address, :plant_id, :start_date, :end_date, :description, :latitude, :longitude, :elevation
  json.url pollination_place_url(pollination_place, format: :json)
end
