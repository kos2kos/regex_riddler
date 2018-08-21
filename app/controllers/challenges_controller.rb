class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def create
    @challenge = Challenge.create(challenge_params)

    if @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render :new
    end

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

  private

  def challenge_params
    params.require(:challenge).permit(:name,:trial, :solution)
  end

end
