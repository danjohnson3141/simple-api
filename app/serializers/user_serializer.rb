class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :created_by, :updated_by
end
