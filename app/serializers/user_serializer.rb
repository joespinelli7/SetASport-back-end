class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :full_name, :password, :active
  has_many :user_courts
end