json.array!(@golf_club_tournament_courses) do |golf_club_tournament_course|
  json.extract! golf_club_tournament_course, :id, :golf_course_id, :golf_club_tournament_id, :created_by, :created_date, :updated_by, :updated_date
  json.url golf_club_tournament_course_url(golf_club_tournament_course, format: :json)
end
