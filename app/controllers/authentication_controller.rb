class AuthenticationController < ApplicationController
    def login
        @user = User.find_by(username: params[:username])

        if !@user 
            render json: {message: "Not today bro!"}, status: :unauthorized
        else 
            if !@user.authenticate(params[:password])
                render json: {message: "Not today bro!"}, status: :unauthorized
            else 
                secret = Rails.application.secret_key_base
                payload = {id: @user.id}
                token = JWT.encode(payload, secret)

                render json: {token: token}
            end
        end
    end
end
