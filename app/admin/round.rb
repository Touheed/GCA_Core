ActiveAdmin.register Round do

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


permit_params :score_card_type_id, :created_by, :created_date, :updataed_by, :updated_date, :course_hole_id, :score, :putts, :fairway_hits, :status

index do
    selectable_column
    id_column
    column :score_card_type_id
    column :course_hole_id
    column :score
    column :putts
    column :fairway_hits
    column :status
    actions
  end

    filter :id
    filter :score_card_type_id
    filter :course_hole_id
    filter :score
    filter :putts
    filter :fairway_hits
    filter :status
 
form do |f|
    f.inputs "New Round" do
      f.input :score_card_type_id, :label => 'ScoreCardType', :as => :select, :collection => ScoreCardType.all.map{|s| [" #{s.description}", s.id]}
      f.input :course_hole_id, :label => 'CourseHole', :as => :select, :collection => CourseHole.all.map{|c| [ c.id]}
    f.input :score
    f.input :putts
    f.input :fairway_hits
    f.input :status
    f.input :created_by
    f.input :created_date
    f.input :updated_by
    f.input :updated_date
end
    actions

  end

  
end
