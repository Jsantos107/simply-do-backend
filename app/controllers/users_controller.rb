class UsersController < ApplicationController
    def show
        authenticate 
        render json: {user: @user}
    end
    def create 
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )
        render json: {user: @user}
    end
end
