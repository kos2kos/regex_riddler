class ApplicationController < ActionController::Base
    helper_method :is_loggedin?, :current_user

    def current_user
      if session[:user_id]
        @user = User.find(session[:user_id])
      end
    end
  
    def is_loggedin?
      !!current_user
    end
  
    def authorized
        unless session[:user_id]
            redirect_to login_path
        end
    end
end
