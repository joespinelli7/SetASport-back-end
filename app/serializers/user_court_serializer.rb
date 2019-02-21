class UserCourtSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :court_id, :time
  belongs_to :user
  belongs_to :court
end
