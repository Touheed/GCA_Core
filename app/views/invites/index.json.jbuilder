json.array!(@invites) do |invite|
  json.extract! invite, :id, :user_id, :invite_email_id, :created_by, :created_date, :updated_by, :updated_date
  json.url invite_url(invite, format: :json)
end
