ActiveAdmin.register GcaUser do

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


permit_params :user_name, :first_name, :middle_name, :last_name, :cell_number, :social_media_provider, :social_media_id, :created_by, :created_date, :updataed_by, :updated_date, :realm, :username, :password, :credentials, :challenges, :email, :emailverified, :verificationtoken, :status, :created, :lastupdated, :provider, :nick_name 

index do
    selectable_column
    id_column
    column :user_name
    column :first_name
    column :middle_name
    column :last_name
    column :cell_number
    column :social_media_provider
    column :social_media_id
    column :created_by
    column :created_date
    column :updated_by
    column :updated_date
    column :realm
    column :username
    column :password
    column :credentials
    column :challenges
    column :email
    column :emailverified
    column :verificationtoken
    column :status
    column :created
    column :lastupdated
    column :provider
    column :nick_name
    actions
  end

  filter :id
  filter :user_name
  filter :first_name
  filter :middle_name
  filter :last_name
  filter :password
  filter :email
  filter :cell_number
  filter :social_media_provider
   filter :social_media_id
   filter :created_at
 
 form do |f|
    f.inputs "New User" do
    f.input :user_name
    f.input :first_name
    f.input :middle_name
    f.input :last_name
    f.input :cell_number
    f.input :social_media_provider
    f.input :social_media_id
    f.input :created_by
    f.input :created_date
    f.input :updated_by
    f.input :updated_date
    f.input :realm
    f.input :username
    f.input :password
    f.input :credentials
    f.input :challenges
    f.input :email
    f.input :emailverified
    f.input :verificationtoken
    f.input :status
    f.input :created
    f.input :lastupdated
    f.input :provider
    f.input :nick_name
    end
    f.actions
  end

end
