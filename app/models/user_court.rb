class UserCourt < ApplicationRecord
  belongs_to :user
  belongs_to :court
end
