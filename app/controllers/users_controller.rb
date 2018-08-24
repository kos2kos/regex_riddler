class UsersController < ApplicationController
  before_action :authorized, except:[:new, :create]
  before_action only: [:edit, :update, :destroy] do
    edit_authorized(User.find(params[:id]))
  end
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @i = 0
    @image = Image.all.sample

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.image = Image.all.sample.name
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end

  def edit_authorized(resource)
    unless session[:user_id] == resource.id
      redirect_to login_path
    end
  end


end
