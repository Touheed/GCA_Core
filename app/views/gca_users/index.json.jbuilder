json.array!(@gca_users) do |gca_user|
  json.extract! gca_user, :id, :user_name, :first_name, :middle_name, :last_name, :password, :email, :cell_number, :social_media_provider, :social_media_id, :created_by, :created_date, :updataed_by, :updated_date
  json.url gca_user_url(gca_user, format: :json)
end
