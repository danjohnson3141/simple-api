json.array!(@groups) do |group|
  json.extract! group, :id, :name, :description, :visible, :leavable, :member_list, :group_type_id, :owner_user_id, :app_sponsor_id, :created_by, :updated_by
  json.url group_url(group, format: :json)
end
