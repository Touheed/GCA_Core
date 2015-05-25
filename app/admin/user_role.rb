ActiveAdmin.register UserRole do


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
permit_params :gca_user_id, :gca_role_id, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :gca_user_id
    column :gca_role_id
    column :created_by
    column :updated_by
    actions
  end

  filter :id
  filter :gca_user_id
  filter :gca_role_id
  filter :created_by
  filter :updated_by
 
 form do |f|
    f.inputs "New User Role" do
      f.input :gca_user_id, :label => 'GcaUser', :as => :select, :collection => GcaUser.all.map{|u| [" #{u.first_name} #{u.last_name}", u.id]}
      f.input :gca_role_id, :label => 'GcaRole', :as => :select, :collection => GcaRole.all.map{|u| [" #{u.role_name} ", u.id]}
      f.input :created_by
      f.input :created_date
       f.input :updated_by
       f.input :updated_date
    end
    f.actions
  end

end
