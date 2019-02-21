class Court < ApplicationRecord
  has_many :user_courts
  has_many :users, through: :user_courts
end
