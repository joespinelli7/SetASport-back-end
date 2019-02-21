class User < ApplicationRecord
  has_many :user_courts
  has_many :courts, through: :user_courts
end
