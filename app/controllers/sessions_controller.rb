class SessionsController < ApplicationController
    def create        
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password]) 
            session[:user_id]||= user.id
            render json: user
        else
            render json: {errors: ["not authorized"]}, status: :unauthorized
        end
     end
end
