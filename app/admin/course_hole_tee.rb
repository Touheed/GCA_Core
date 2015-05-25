ActiveAdmin.register CourseHoleTee do

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

permit_params :tee_id, :course_hole_id, :latitude, :longitude, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :tee_id
    column :course_hole_id
    column :latitude
    column :longitude
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :tee_id
    filter :course_hole_id
    filter :latitude
    filter :longitude
 
 form do |f|
    f.inputs "New User" do
   f.input :tee_id, :label => 'Tee', :as => :select, :collection => Tee.all.map{|t| [" #{t.description}", t.id]}
    f.input :course_hole_id, :label => 'CourseHole', :as => :select, :collection => CourseHole.all.map{|c| [c.id]}
    f.input :latitude
    f.input :longitude
      f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end
end
