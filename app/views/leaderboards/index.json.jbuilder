json.array!(@leaderboards) do |leaderboard|
  json.extract! leaderboard, :id, :user_tournament_id, :course_hole_id, :score, :putts, :fairway_hits, :handicap_index, :created_by, :created_date, :updated_by, :updated_date
  json.url leaderboard_url(leaderboard, format: :json)
end
