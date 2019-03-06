class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :full_name, :password, :active
  has_many :user_courts
  has_many :courts, through: :user_courts
  has_many :my_courts, through: :favorite_courts, source: :court
end
