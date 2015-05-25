json.array!(@states) do |state|
  json.extract! state, :id, :state_name, :created_by, :created_date, :updated_by, :updated_date
  json.url state_url(state, format: :json)
end
