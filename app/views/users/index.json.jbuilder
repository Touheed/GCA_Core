json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :first_name, :middle_name, :last_name, :password, :email, :cell_number, :social_media_provider, :social_media_id, :created_by, :updated_by
  json.url user_url(user, format: :json)
end
