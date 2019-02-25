class CourtSerializer < ActiveModel::Serializer
  attributes :id, :address, :name, :longitude, :latitude
  has_many :users
end
