class ApplicationController < ActionController::API
    def authenticate
        token = request.headers['Authorization'].split(' ')[1]
        
        if !token
            render status: :unauthorized
        else 
            secret = Rails.application.secret_key_base
            begin 
                payload = JWT.decode(token, secret)[0]
                @user = User.find(payload["id"])
            rescue 
            render status: :unauthorized
            end
        end
    end 
end
