class MemersController < ApplicationController
  before_action :set_memer, only: [:show, :edit, :update, :destroy]

  # GET /memers
  # GET /memers.json
  def index
    @memers = Memer.all
  end

  # GET /memers/1
  # GET /memers/1.json
  def show
  end

  # GET /memers/new
  def new
    @memer = Memer.new
  end

  # GET /memers/1/edit
  def edit
  end

  # POST /memers
  # POST /memers.json
  def create
    @memer = Memer.new(memer_params)

    respond_to do |format|
      if @memer.save
        format.html { redirect_to @memer, notice: 'Memer was successfully created.' }
        format.json { render :show, status: :created, location: @memer }
      else
        format.html { render :new }
        format.json { render json: @memer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memers/1
  # PATCH/PUT /memers/1.json
  def update
    respond_to do |format|
      if @memer.update(memer_params)
        format.html { redirect_to @memer, notice: 'Memer was successfully updated.' }
        format.json { render :show, status: :ok, location: @memer }
      else
        format.html { render :edit }
        format.json { render json: @memer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memers/1
  # DELETE /memers/1.json
  def destroy
    @memer.destroy
    respond_to do |format|
      format.html { redirect_to memers_url, notice: 'Memer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memer
      @memer = Memer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memer_params
      params.require(:memer).permit(:name, :gender, :memeCount)
    end
end
