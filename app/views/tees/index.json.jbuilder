json.array!(@tees) do |tee|
  json.extract! tee, :id, :description, :created_by, :created_date, :updated_by, :updated_date
  json.url tee_url(tee, format: :json)
end
