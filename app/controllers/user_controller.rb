class UserController < ApplicationController

    before_action :authorise, except: [:new, :create]

    def new
        @user = User.new
    end

    def show
        render component: "User", props: {user: User.find(params[:id])}
    end

    def create
        user  = User.create(user_params)
        redirect_to user_path(user)
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end

    
    
end