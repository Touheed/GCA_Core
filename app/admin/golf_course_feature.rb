ActiveAdmin.register GolfCourseFeature do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

permit_params :hole_number, :feature_type, :show_marker, :front_latitude, :front_longitude, :back_latitude, :back_longitude, :description, :created_by, :created_date, :updated_by, :updated_date, :golf_course_id, :course_hole_id

index do
    selectable_column
    id_column
    column :hole_number
    column :feature_type
    column :show_marker
    column :front_latitude
    column :front_longitude
    column :back_latitude
    column :back_longitude
    column :description
    column :created_by
    column :created_date
    column :updated_by
    column :updated_date
    column :golf_course_id
    column :course_hole_id
    actions
  end

  filter :id
    filter :hole_number
    filter :feature_type
    filter :show_marker
    filter :front_latitude
    filter :front_longitude
    filter :back_latitude
    filter :back_longitude
    filter :description
    filter :golf_course_id
    filter :course_hole_id
 
form do |f|
    f.inputs "New Golf Course Feature" do
     f.input :hole_number
     f.input :feature_type
     f.input :show_marker
     f.input :front_latitude
     f.input :front_longitude
     f.input :back_latitude
     f.input :back_longitude
     f.input :description
     f.input :created_by
     f.input :created_date
     f.input :updated_by
     f.input :updated_date
     f.input :golf_course_id, :label => 'Golf Course', :as => :select, :collection => GolfCourse.all.map{|g| [" #{g.course_name} ", g.id]}
     f.input :course_hole_id, :label => 'Course Hole', :as => :select, :collection => CourseHole.all.map{|c| [ c.id]}
 
    end
    f.actions
  end
end
