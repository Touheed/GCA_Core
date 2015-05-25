ActiveAdmin.register Leaderboard do

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

permit_params :user_tournament_id, :course_hole_id, :score, :putts, :fairway_hits, :handicap_index, :created_by, :created_date, :updated_by, :updated_date
 
index do
    selectable_column
    id_column
    column :user_tournament_id
    column :course_hole_id
    column :score
    column :putts
    column :fairway_hits
    column :handicap_index
    column :created_by
    column :updated_by
   
    actions
  end

  filter :id
  filter :user_tournament_id
  filter :course_hole_id
  filter :score
  filter :putts
  filter :fairway_hits
  filter :handicap_index
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Leaderboard" do
      f.inputs :user_tournament_id, :label => 'User tournament', :as => :select, :collection => UserTournament.all.map{|u| [ u.id]}
      f.inputs :course_hole_id, :label => 'CourseHole', :as => :select, :collection => CourseHole.all.map{|c| [c.id]}
      f.inputs :score
      f.inputs :putts
      f.inputs :fairway_hits
      f.inputs :handicap_index
      f.input :created_by
      f.input :created_date
      f.input :updated_by
      f.input :updated_date
    end
    f.actions
  end
end
