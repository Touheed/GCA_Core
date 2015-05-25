ActiveAdmin.register FavouriteCourse do

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

permit_params :golf_course_id, :gca_user_id, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :golf_course_id
    column :gca_user_id
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :golf_course_id
   filter :gca_user_id
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Favourite Course" do
     f.input :golf_course_id, :label => 'GolfCourse', :as => :select, :collection => GolfCourse.all.map{|g| [" #{g.course_name}", g.id]}
      f.input :gca_user_id, :label => 'GcaUser', :as => :select, :collection => GcaUser.all.map{|u| [" #{u.first_name} #{u.last_name}", u.id]}
      f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end


end
