class PlayController < ApplicationController

  def play
    @challenge = Challenge.all.sample

    render :play, layout: "play"
  end

  def result
    @challenge = Challenge.find(params[:id])
    @challenge.regex = params[:regex]
    @result = @challenge.result
    @user_challenges = UserChallenge.all.select {|x| x.challenge_id == @challenge.id}
    
    if params[:regex] == "" || params[:regex] == nil || @result == false
      @score = 0
    else
      @score = params[:time_left].to_i * 100
    end
    if session[:user_id]
      @user = User.find(session[:user_id])
      @user.user_challenges.create(user_id: @user, challenge: @challenge, result: @result, score: @score)
      total_score = @user.total_score + @score
      @user.update(total_score: total_score)
    end
    render :result
  end


  def play_params
    params.require(:play).permit(:name, :trial, :solution, :regex)
  end
end
