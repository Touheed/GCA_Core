json.array!(@user_tournaments) do |user_tournament|
  json.extract! user_tournament, :id, :gca_user_id, :golf_club_tournament_id, :authentication_token, :created_by, :created_date, :updated_by, :updated_date
  json.url user_tournament_url(user_tournament, format: :json)
end
