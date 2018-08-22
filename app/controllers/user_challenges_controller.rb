class UserChallengesController < ApplicationController
    before_action :can_only_see_own_challenge_attempts

  private

  def can_only_see_own_challenge_attempts
    unless self.user_id == session[:user_id]
      render "univ/doesnt_belong"
    end
  end
end
