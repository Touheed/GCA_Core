ActiveAdmin.register RoundGroup do

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

permit_params :round_id, :group_name, :group_type, :group_owner, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :round_id
    column :group_name
    column :group_type
    column :group_owner
    column :created_by
    column :updated_by
    actions
  end

  filter :round_id
  filter :group_name
  filter :group_type
  filter :group_owner
  filter :created_by
  filter :created_at
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Round Group" do
     f.input :round_id, :label => 'Round Id', :as => :select, :collection => Round.all.map{|r| [r.id]}
     f.input :group_name
     f.input :group_type
  	 f.input :group_owner, :label => 'Group Owner', :as => :select, :collection => GcaUser.all.map{|u| [" #{u.first_name} #{u.last_name}", u.id]}
     f.input :created_by
     f.input :created_date
     f.input :updated_by
     f.input :updated_date
    end
    f.actions
  end
end
