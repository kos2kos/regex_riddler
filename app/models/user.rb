class User < ApplicationRecord
  has_many :user_challenges
  has_many :challenges, through: :user_challenges

  has_secure_password

  def url_edit
    "http://localhost:3000/user/#{self.id}/edit"
  end
end
