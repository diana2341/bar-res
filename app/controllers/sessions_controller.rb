class SessionsController < ApplicationController

    def create
        user=User.find_by(email:params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id]=user.id 
            flash[:notice]='Logged in successfully'
    end

    def destroy
    end
end
