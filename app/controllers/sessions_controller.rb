class SessionsController < ApplicationController
    #user sholdnt have to be logged in before logging in
    skip_before_filter :set_current_user
    
    def create
        auth = request.env["omniauth.auth"]
        user = PrivMemer.find_by(:provider => auth["provider"], :uid => auth["uid"]) ||
          PrivMemer.create_with_omniauth(auth)
        session[:user_id] = user.id
        redirect_to memers_path
    end
    
    def destroy
        session.delete(:user_id)
        redirect_to memers_path
    end
end
