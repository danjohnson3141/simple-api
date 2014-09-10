class GroupRequestSerializer < ActiveModel::Serializer
  attributes :id, :pre_auth, :approved, :created_by, :updated_by
  has_one :user
  has_one :group
end
