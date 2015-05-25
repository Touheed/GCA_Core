ActiveAdmin.register GcaRole do

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


permit_params :role_name, :created_by, :created_date, :updataed_by, :updated_date

index do
    selectable_column
    id_column
    column :role_name
    column :created_by
    column :updated_by
    actions
  end

  filter :role_name
  filter :created_by
  filter :updated_by
  filter :created_at
end
