class MemersController < ApplicationController
    before_action :set_memer, except: [:index, :new, :create]
    
    def index
        @memers = Memer.all
    end
    
    def show
    end
    
    def new
        @memer = Memer.new
    end
    
    def edit
    end
    
    def create
        @memer = Memer.new(memer_params)
        if @memer.save
            flash[:notice] = "#{@memer.name} was successfully created!"
            redirect_to memers_path
        else
            render 'new'
        end
    end
    
    def update
        if @memer.update_attributes(memer_params)
            flash[:notice] = "#{@memer.name} was successfully updated!"
            redirect_to memer_path(@memer)
        else
            render 'edit'
        end
    end
    
    def destroy
        @memer.destroy
        flash[:notice] = "Memer #{@memer.name} deleted :("
        redirect_to memers_path
    end
    
    private
    
        def set_memer
            @memer = Memer.find(params[:id])
        end
        
        def memer_params
            params.require(:memer).permit(:name, :age, :gender)
        end
end
