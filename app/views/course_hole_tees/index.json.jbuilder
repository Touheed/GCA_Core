json.array!(@course_hole_tees) do |course_hole_tee|
  json.extract! course_hole_tee, :id, :tee_id, :course_hole_id, :latitude, :longitude, :created_by, :created_date, :updated_by, :updated_date
  json.url course_hole_tee_url(course_hole_tee, format: :json)
end
