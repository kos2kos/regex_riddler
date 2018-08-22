class SessionController < ApplicationController
    before_action :authorized, only:[:destroy]
    def new
    end

    def create
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to play_path
        else
            redirect_to login_path
        end
    end

    def destroy
        sessions.delete(:user_id)
        redirect_to login_path
    end
end