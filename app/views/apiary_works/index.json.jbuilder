json.array!(@apiary_works) do |apiary_work|
  json.extract! apiary_work, :id, :name, :description, :notes, :apiary_id, :hives_id, :work_information_type_id, :date
  json.url apiary_work_url(apiary_work, format: :json)
end
