class MemersController < ApplicationController
    def index
        @memers = Memer.all
    end
    
    def show
        id = params[:id]
        @memer = Memer.find(id)
    end
    
    def new
        @memer = Memer.new
    end
    
    def create
        params.require(:memer)
        permitted = params[:memer].permit(:name, :age, :gender)
        @memer = Memer.create!(permitted)
        flash[:notice] = "#{@memer.name} was successfully created!"
        redirect_to memers_path
    end
    
    def edit
        
    end
end
