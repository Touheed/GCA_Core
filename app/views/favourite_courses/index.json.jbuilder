json.array!(@favourite_courses) do |favourite_course|
  json.extract! favourite_course, :id, :golf_course_id, :user_id, :created_by, :created_date, :updated_by, :updated_date
  json.url favourite_course_url(favourite_course, format: :json)
end
