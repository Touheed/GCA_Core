json.array!(@golf_courses) do |golf_course|
  json.extract! golf_course, :id, :golf_club_id, :course_name, :course_rating, :created_by, :updated_by, :updated_date
  json.url golf_course_url(golf_course, format: :json)
end
