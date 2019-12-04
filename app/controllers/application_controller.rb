class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorise
        return redirect_to root_path if current_user.nil?
        return redirect_to user_path(current_user) if (params[:id] && params[:id] != session[:user_id])
      end
end
