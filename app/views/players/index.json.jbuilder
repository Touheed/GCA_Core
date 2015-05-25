json.array!(@players) do |player|
  json.extract! player, :id, :gca_user_id, :handicap, :tee_id, :created_by, :created_date, :updated_by, :updated_date, :score, :putts, :fairway_hits, :handicap_status, :status, :nick_name
  json.url player_url(player, format: :json)
end
