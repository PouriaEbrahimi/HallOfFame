class MemersController < ApplicationController
    def index
        @memers = Memer.all
    end
    
    def show
        @memer = Memer.find(params[:id])
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
        @memer = Memer.find(params[:id])
    end
    
    def update
        params.require(:memer)
        @memer = Memer.find(params[:id])
        permitted = params[:memer].permit(:name, :age, :gender)
        @memer.update_attributes!(permitted)
        flash[:notice] = "#{@memer.name} was successfully updated!"
        redirect_to memer_path(@memer)
    end
    
    def destroy
        @memer = Memer.find(params[:id])
        @memer.destroy
        flash[:notice] = "Memer #{@memer.name} deleted :("
        redirect_to memers_path
    end
end
