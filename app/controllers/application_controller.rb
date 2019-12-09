class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :authorise

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorise
        return redirect_to root_path if current_user.nil?
    end
end
