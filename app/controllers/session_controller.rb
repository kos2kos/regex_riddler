class SessionController < ApplicationController
    before_action :authorized, only:[:destroy]
    def new
        if session[:user_id]
            redirect_to user_path(session[:user_id])
        end
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

    def logout
        session.delete(:user_id)
        redirect_to login_path
    end
end