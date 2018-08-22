class PlayController < ApplicationController

  def play
    @challenge = Challenge.all.sample

    render :play, layout: "play"
  end

  def result
    @challenge = Challenge.find(params[:id])
    @challenge.regex = params[:regex]
    # byebug
    render :result
  end

  private

  def play_params
    params.require(:play).permit(:name, :trial, :solution, :regex)
  end
end
