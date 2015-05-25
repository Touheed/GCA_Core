ActiveAdmin.register GroupMember do

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


permit_params :player_id, :group_id, :created_by, :created_date, :updataed_by, :updated_date


index do
    selectable_column
    id_column
    column :player_id
    column :group_id
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :player_id
   filter :group_id
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Favourite Course" do
      f.input :player_id, :label => 'Player', :as => :select, :collection => Player.all.map{|p| [" #{p.nick_name}", p.id]}
      f.input :group_id, :label => 'Group', :as => :select, :collection => Group.all.map{|g| [" #{g.group_name}", g.id]}
      f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end


end
