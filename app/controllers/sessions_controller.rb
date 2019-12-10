class SessionsController < ApplicationController
    skip_before_action :authorise

    def new
    end

    def create
        user = User.find_by({username: params[:sessions][:username]})
        puts user.inspect
        if user && user.authenticate(params[:sessions][:password])
            session[:user_id] = user.id.to_s
            redirect_to user_path(user)
        else
            redirect_to root_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end
end
