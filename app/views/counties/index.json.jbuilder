json.array!(@counties) do |county|
  json.extract! county, :id, :county_name, :created_by, :created_date, :updated_by, :updated_date
  json.url county_url(county, format: :json)
end
