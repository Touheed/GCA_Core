json.array!(@cities) do |city|
  json.extract! city, :id, :city_name, :created_by, :created_date, :updated_by, :updated_date
  json.url city_url(city, format: :json)
end
