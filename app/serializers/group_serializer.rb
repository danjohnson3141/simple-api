class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :owner_user_id, :created_by, :updated_by
  has_one :group_type
end
