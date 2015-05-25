json.array!(@gca_roles) do |gca_role|
  json.extract! gca_role, :id, :role_name, :created_by, :created_date, :updated_by, :updated_date
  json.url gca_role_url(gca_role, format: :json)
end
