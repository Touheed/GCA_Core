ActiveAdmin.register Player do

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

permit_params :gca_user_id, :handicap, :tee_id, :created_by, :created_date, :updated_by, :updated_date, :score, :putts, :fairway_hits, :handicap_status, :status, :nick_name

index do
    selectable_column
    id_column
    column :gca_user_id
    column :handicap
    column :tee_id
    column :score
    column :putts
    column :fairway_hits 
    column :handicap_status
    column :status
     column :nick_name
    actions
  end

    filter :id
    filter :gca_user_id
    filter :handicap
    filter :tee_id
    filter :score
    filter :putts
    filter :fairway_hits 
    filter :handicap_status
    filter :status
     filter :nick_name
 
form do |f|
    f.inputs "New Player" do
    f.input :gca_user_id, :label => 'GcaUser', :as => :select, :collection => GcaUser.all.map{|u| [" #{u.first_name} #{u.last_name}", u.id]}
    f.input :handicap
    f.input :tee_id, :label => 'Tee', :as => :select, :collection => Tee.all.map{|t| [" #{t.description}", t.id]}
    f.input :score
    f.input :putts
    f.input :fairway_hits 
    f.input :handicap_status
    f.input :status
     f.input :nick_name
       f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end
end