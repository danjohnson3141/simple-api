class GroupTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_by, :updated_by
end
