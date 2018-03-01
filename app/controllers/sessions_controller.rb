class SessionsController < ApplicationController
   
    def new
        
    end
    
    def create
        user = User.find_by(email:params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "You are now logged in"
            redirect_to donate_path
        else
            flash.now[:danger] = "There was something wrong with your login information"
            render 'new'
        end
    end
    
    def destroy
       session[:user_id] = nil
       flash[:success] = "You are now Logged out"
       redirect_to root_path 
    end
    
    
end
