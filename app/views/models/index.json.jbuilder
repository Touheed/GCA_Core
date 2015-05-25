json.array!(@models) do |model|
  json.extract! model, :id, :UserDetail, :user_id, :handicap, :precision, :handicap_status, :tee_id, :created_by, :created_date, :updated_by, :updated_date
  json.url model_url(model, format: :json)
end
