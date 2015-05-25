ActiveAdmin.register ScoreCard do

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
permit_params :round_id, :course_hole_id, :round_group_member_id, :handicap_index, :score, :putts, :fairway_hits, :created_by, :created_at, :updataed_by, :updated_on

index do
    selectable_column
    id_column
    column :round_id
    column :course_hole_id
    column :round_group_member_id
    column :handicap_index
    column :score
    column :putts
    column :fairway_hits
    column :created_by
    column :updated_by
    actions
  end

  filter :id
 filter :round_id
    filter :course_hole_id
    filter :round_group_member_id
    filter :handicap_index
    filter :score
    filter :putts
    filter :fairway_hits
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Score Card" do
     f.input :round_id, :label => 'Round', :as => :select, :collection => Round.all.map{|r| [r.id]}
     f.input :course_hole_id, :label => 'CourseHole', :as => :select, :collection => CourseHole.all.map{|c| [c.id]}
     f.input :round_group_member_id, :label => 'RoundGroupMember', :as => :select, :collection => RoundGroupMember.all.map{|r| [r.id]}
     f.input :handicap_index
     f.input :score
     f.input :putts
     f.input :fairway_hits
     f.input :created_by
      f.input :created_date
     f.input :updated_by
     f.input :updated_date
    end
    f.actions
  end
end

