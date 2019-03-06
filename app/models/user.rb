class User < ApplicationRecord
  has_many :user_courts
  has_many :courts, through: :user_courts
  has_many :favorite_courts
  has_many :my_courts, through: :favorite_courts, source: :court
end
