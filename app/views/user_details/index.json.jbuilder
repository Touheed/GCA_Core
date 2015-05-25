json.array!(@user_details) do |user_detail|
  json.extract! user_detail, :id, :user_id, :handicap, :precision, :handicap_status, :tee_id, :created_by, :created_date, :updated_by, :updated_date
  json.url user_detail_url(user_detail, format: :json)
end
