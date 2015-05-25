ActiveAdmin.register GolfCourse do

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


permit_params :golf_club_id, :course_name, :course_rating, :created_by, :created_date, :updataed_by, :updated_date,:langitude,:longitude,:course_slope,:total_hole, :state_id,:city_id, :course_address, :street,:zip,:county_id,:phone,:fax,:url,:architech, :status, :guest_policy, :founded
index do
    selectable_column
    id_column
    column :golf_club_id
    column :course_name
    column :course_rating
    column :created_by
    column :created_date
    column :updated_by
    column :updated_date
    column :langitude
    column :longitude
    column :course_slope
    column :total_hole
    column :state_id
    column :city_id
    column :course_address
    column :street
    column :zip
    column :county_id
    column :phone
    column :fax
    column :url
    column :architech
    column :status
    column :guest_policy
    column :founded
     actions
  end

  filter :id
  filter :golf_club_id
   filter :course_name
    filter :course_rating
    filter :langitude
    filter :longitude
    filter :course_slope
    filter :total_hole
    filter :state_id
    filter :city_id
    filter :zip
    filter :county_id
    filter :phone
    filter :fax
    filter :url
    filter :architech
    filter :founded
    filter :status
    filter :questpolicy

 
form do |f|
    f.inputs "New Golf Course" do
    f.input :golf_club_id, :label => 'GolfClub', :as => :select, :collection => GolfClub.all.map{|g| [" #{g.club_name}", g.id]}
    f.input :course_name
    f.input :course_rating
    f.input :created_by
    f.input :created_date
    f.input :updated_by
    f.input :updated_date
    f.input :langitude
    f.input :longitude
    f.input :course_slope
    f.input :total_hole
    f.input :state_id, :label => 'State', :as => :select, :collection => State.all.map{|s| [" #{s.state_name}", s.id]}
    f.input :city_id, :label => 'City', :as => :select, :collection => City.all.map{|c| [" #{c.city_name}", c.id]}
    f.input :course_address
    f.input :street
    f.input :zip
    f.input :county_id, :label => 'County', :as => :select, :collection => County.all.map{|c| [" #{c.county_name}", c.id]}
    f.input :phone
    f.input :fax
    f.input :url
    f.input :architech
    f.input :status
    f.input :quest_policy
    f.input :founded
    end
    f.actions
  end


end
