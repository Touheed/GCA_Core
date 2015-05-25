ActiveAdmin.register UserTournament do

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

permit_params :gca_user_id, :golf_club_tournament_id, :authentication_token, :status, :created_by, :created_date, :updated_by, :updated_date

index do
    selectable_column
    id_column
    column :gca_user_id
    column :golf_club_tournament_id
    column :authentication_token
    column :status
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :gca_user_id
  filter :golf_club_tournament_id
  filter :authentication_token
  filter :status
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New User Tournament" do
      f.input :gca_user_id, :label => 'GcaUser', :as => :select, :collection => GcaUser.all.map{|u| [" #{u.first_name} #{u.last_name}", u.id]}
      f.input :golf_club_tournament_id, :label => 'Golf club Tournament', :as => :select, :collection => GolfClubTournament.all.map{|g| [" #{g.name}", g.id]}
      f.input :authentication_token
      f.input :status
      f.input :created_by
      f.input :created_date
      f.input :updated_by
      f.input :updated_date
    end
    f.actions
  end

end
