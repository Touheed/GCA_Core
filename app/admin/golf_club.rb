ActiveAdmin.register GolfClub do

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

permit_params :club_name, :city_id,:county_id, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :club_name
    column :city_id
    column :county_id
     column :created_by
  	column :created_date
    column :updated_by
    column :updated_date
    actions
  end

  filter :id
  filter :club_name
    filter :city_id
    filter :county_id
     filter :created_by
  	filter :created_date
    filter :updated_by
    filter :updated_date
  
 
form do |f|
    f.inputs "New Golf Club Tournament" do
      f.input :club_name
      f.input :city_id, :label => 'City', :as => :select, :collection => City.all.map{|c| [" #{c.city_name}", c.id]}
      f.input :county_id, :label => 'County', :as => :select, :collection => County.all.map{|c| [" #{c.county_name}", c.id]}
      f.input :created_by
      f.input :created_date
      f.input :updated_by
      f.input :updated_date
    end
    f.actions
  end
end
