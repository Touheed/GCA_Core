json.array!(@round_group_members) do |round_group_member|
  json.extract! round_group_member, :id, :user_id, :round_group_id, :created_by, :created_date, :updated_by, :updated_date
  json.url round_group_member_url(round_group_member, format: :json)
end
