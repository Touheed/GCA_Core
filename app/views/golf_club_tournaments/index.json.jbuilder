json.array!(@golf_club_tournaments) do |golf_club_tournament|
  json.extract! golf_club_tournament, :id, :golf_club_id, :name, :city, :locality, :title, :status, :starting_hole, :created_by, :created_date, :updated_by, :updated_date
  json.url golf_club_tournament_url(golf_club_tournament, format: :json)
end
