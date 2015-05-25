ActiveAdmin.register Invite do

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


permit_params :gca_user_id, :invite_email_id, :created_by, :created_date, :updataed_by, :updated_date, :round_id, :nick_name, :status, :player_id


index do
    selectable_column
    id_column
    column :gca_user_id
    column :invite_email_id
    column :round_id
    column :nick_name
    column :status
   column :player_id
    actions
  end

  filter :id
  filter :gca_user_id
   filter :invite_email_id
  filter :round_id
    filter :nick_name
    filter :status
   filter :player_id

 
form do |f|
    f.inputs "New Invite" do
      f.input :gca_user_id, :label => 'GcaUser', :as => :select, :collection => GcaUser.all.map{|u| [" #{u.first_name} #{u.last_name}", u.id]}
      f.input :invite_email_id
       f.input :round_id, :label => 'Round Id', :as => :select, :collection => Round.all.map{|r| [r.id]}
       f.input :nick_name
       f.input :status
       f.input :player_id, :label => 'Player', :as => :select, :collection => Player.all.map{|p| [" #{p.nick_name}", p.id]}
      f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end


end
