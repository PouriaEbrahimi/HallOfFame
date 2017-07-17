class PrivMemersController < ApplicationController
    # layout false
    # layout 'application', :except => :view
    #user sholdnt have to be logged in before logging in
    skip_before_filter :set_current_user
    
    def index
        @privmemers = PrivMemer.all
    end
end
