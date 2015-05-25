ActiveAdmin.register GolfClubTournament do

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

permit_params :golf_club_id, :name, :city, :locality, :title, :description, :status, :starting_hole, :created_by, :created_date, :updated_by, :updated_date


index do
    selectable_column
    id_column
    column :golf_club_id
    column :name
    column :city
    column :locality
    column :title
    column :description
    column :status
    column :starting_hole

    actions
  end

  filter :id
  filter :golf_club_id
  filter :name
  filter :city
  filter :locality
  filter :title
  filter :description
  filter :status
  filter :starting_hole
  filter :created_by
  filter :created_date
  filter :updated_by
  filter :updated_date
 
form do |f|
    f.inputs "New Golf Club Tournament" do
      f.input :golf_club_id, :label => 'GolfClub', :as => :select, :collection => GolfClub.all.map{|g| [" #{g.club_name}", g.id]}
      f.input :name
      f.input :city
     f.input :locality
      f.input :title
      f.input :description
      f.input :status
      f.input :starting_hole
      f.input :created_by
      f.input :created_date
      f.input :updated_by
      f.input :updated_date
    end
    f.actions
  end
end
