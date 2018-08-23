class ChallengesController < ApplicationController
  #TODO: only allow challenges creator to edit their challenge
  before_action :authorized, except:[:index, :show]
  def index
    @challenges = Challenge.all
    @i = 0
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.result && @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render :new
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update(challenge_params)
    if @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render :challenge
    end
  end

  def destroy
    Challenge.find(params[:id]).destroy

    redirect_to challenges_path
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :trial, :solution, :regex)
  end

end
