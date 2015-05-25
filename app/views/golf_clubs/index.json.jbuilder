json.array!(@golf_clubs) do |golf_club|
  json.extract! golf_club, :id, :club_name, :created_by, :created_date, :updated_by, :updated_date
  json.url golf_club_url(golf_club, format: :json)
end
