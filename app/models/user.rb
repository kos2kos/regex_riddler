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

  def url_edit
    "http://localhost:3000/user/#{self.id}/edit"
  end

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
