json.array!(@group_members) do |group_member|
  json.extract! group_member, :id, :user_id, :group_id, :created_by, :updated_by
  json.url group_member_url(group_member, format: :json)
end
