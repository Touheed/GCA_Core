ActiveAdmin.register RoundGroupMember do

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

permit_params :player_id, :round_group_id, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :player_id
    column :round_group_id
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :user_id
   filter :round_group_id
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Round Group Member" do
     f.input :player_id, :label => 'Player', :as => :select, :collection => Player.all.map{|p| [" #{p.nick_name}", p.id]}
      f.input :round_group_id
      f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end
end
