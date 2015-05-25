ActiveAdmin.register GolfClubTournamentCourse do

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

permit_params :golf_course_id, :golf_club_tournament_id, :created_by, :created_date, :updated_by, :updated_date

index do
    selectable_column
    id_column
    column :golf_course_id
    column :golf_club_tournament_id
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :golf_course_id
  filter :golf_club_tournament_id
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Golf Tournament Course" do
      f.input :golf_course_id, :label => 'Golf course', :as => :select, :collection => GolfCourse.all.map{|g| [" #{g.course_name}", g.id]}
      f.input :golf_club_tournament_id, :label => 'Golf club Tournament', :as => :select, :collection => GolfClubTournament.all.map{|g| [" #{g.name}", g.id]}
      f.input :created_by
      f.input :created_date
      f.input :updated_by
      f.input :updated_date
    end
    f.actions
  end

end
