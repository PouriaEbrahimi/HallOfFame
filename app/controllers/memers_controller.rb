class MemersController < ApplicationController
    def index
        @memers = Memer.all
    end
    
    def show
        id = params[:id]
        @memer = Memer.find(id)
    end
end
