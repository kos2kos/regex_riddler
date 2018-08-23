class User < ApplicationRecord
  has_many :user_challenges
  has_many :challenges, through: :user_challenges
  has_many :creations, class_name: "Challenge", foreign_key: "user_id"

  # validates all attributes
  validates :name, presence: true
  validates :username, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true

  has_secure_password
end
