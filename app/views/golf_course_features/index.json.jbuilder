json.array!(@golf_course_features) do |golf_course_feature|
  json.extract! golf_course_feature, :id, :hole_number, :feature_type, :show_marker, :front_latitude, :front_longitude, :back_latitude, :back_longitude, :description, :created_by, :created_date, :updated_by, :updated_date, :golf_course_id, :course_hole_id
  json.url golf_course_feature_url(golf_course_feature, format: :json)
end
