class User < ApplicationRecord
  has_many :user_challenges
  has_many :challenges, through: :user_challenges
  has_many :creations, class_name: "Challenge", foreign_key: "user_id"

  has_secure_password
end
