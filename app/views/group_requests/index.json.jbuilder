json.array!(@group_requests) do |group_request|
  json.extract! group_request, :id, :user_id, :group_id, :pre_auth, :approved, :created_by, :updated_by
  json.url group_request_url(group_request, format: :json)
end
