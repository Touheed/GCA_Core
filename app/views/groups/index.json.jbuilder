json.array!(@groups) do |group|
  json.extract! group, :id, :group_name, :group_type, :group_owner, :created_by, :created_date, :updated_by, :updated_date
  json.url group_url(group, format: :json)
end
