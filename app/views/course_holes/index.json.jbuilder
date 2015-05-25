json.array!(@course_holes) do |course_hole|
  json.extract! course_hole, :id, :golf_course_id, :par, :stroke_index, :created_by, :created_date, :updated_by, :updated_date
  json.url course_hole_url(course_hole, format: :json)
end
