class UserChallenge < ApplicationRecord
  belong_to :user
  belong_to :challenges
end
