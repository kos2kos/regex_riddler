class PlayController < ApplicationController

  def play
    @challenge = Challenge.all.sample

    render :play, layout: "play"
  end

  def result
    @challenge = Challenge.find(params[:id])
    @challenge.regex = params[:regex]
    @result = @challenge.result

    if params[:regex] == "" || params[:regex] == nil || @result == false
      @score = 0
    else
      @score = params[:time_left] * 100
    end

    if session[:user_id]
      @user = User.find(session[:user_id])
      @user.user_challenges.create(user_id: @user, challenge_id: @challenge.id, result: @result, score: @score)
    end

    render :result
  end

  private

  def play_params
    params.require(:play).permit(:name, :trial, :solution, :regex)
  end
end
