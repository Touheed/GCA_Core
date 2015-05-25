ActiveAdmin.register CourseHole do

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

permit_params :golf_course_id, :par, :stroke_index, :course_hole_order,:hole_latitude,:hole_longitude,:yardage, :bearing,:created_by, :created_date, :updataed_by, :updated_date


index do
    selectable_column
    id_column
    column :golf_course_id
    column :par
    column :stroke_index
    column :course_hole_order
    column :hole_latitude
    column :hole_longitude
    column :yardage
    column :bearing
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :golf_course_id
  filter :par
  filter :stroke_index
  filter :course_hole_order
  filter :hole_latitude
  filter :hole_longitude
  filter :yardage
  filter :bearing
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Golf Course" do
      f.input :golf_course_id, :label => 'GolfCourse', :as => :select, :collection => GolfCourse.all.map{|g| [" #{g.course_name}", g.id]}
      f.input :par
      f.input :stroke_index
      f.input :course_hole_order
      f.input :hole_latitude
      f.input :hole_longitude
      f.input :yardage
      f.input :bearing
      f.input :created_by
      f.input :created_date
      f.input :updated_by
      f.input :updated_date
    end
    f.actions
  end

end
