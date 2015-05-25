json.array!(@round_golf_courses) do |round_golf_course|
  json.extract! round_golf_course, :id, :round_id, :golf_course_id, :created_by, :created_date, :updated_by, :updated_date
  json.url round_golf_course_url(round_golf_course, format: :json)
end
