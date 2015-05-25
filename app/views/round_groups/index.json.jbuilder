json.array!(@round_groups) do |round_group|
  json.extract! round_group, :id, :round_id, :group_name, :group_type, :group_owner, :created_by, :created_date, :updated_by, :updated_date
  json.url round_group_url(round_group, format: :json)
end
