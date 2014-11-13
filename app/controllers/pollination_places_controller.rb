class PollinationPlacesController < ApplicationController
  before_action :set_pollination_place, only: [:show, :edit, :update, :destroy]

  # GET /pollination_places
  # GET /pollination_places.json
  def index
    @pollination_places = PollinationPlace.all
  end

  # GET /pollination_places/1
  # GET /pollination_places/1.json
  def show
  end

  # GET /pollination_places/new
  def new
    @pollination_place = PollinationPlace.new
  end

  # GET /pollination_places/1/edit
  def edit
  end

  # POST /pollination_places
  # POST /pollination_places.json
  def create
    @pollination_place = PollinationPlace.new(pollination_place_params)

    respond_to do |format|
      if @pollination_place.save
        format.html { redirect_to @pollination_place, notice: 'Pollination place was successfully created.' }
        format.json { render :show, status: :created, location: @pollination_place }
      else
        format.html { render :new }
        format.json { render json: @pollination_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pollination_places/1
  # PATCH/PUT /pollination_places/1.json
  def update
    respond_to do |format|
      if @pollination_place.update(pollination_place_params)
        format.html { redirect_to @pollination_place, notice: 'Pollination place was successfully updated.' }
        format.json { render :show, status: :ok, location: @pollination_place }
      else
        format.html { render :edit }
        format.json { render json: @pollination_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pollination_places/1
  # DELETE /pollination_places/1.json
  def destroy
    @pollination_place.destroy
    respond_to do |format|
      format.html { redirect_to pollination_places_url, notice: 'Pollination place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pollination_place
      @pollination_place = PollinationPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pollination_place_params
      params.require(:pollination_place).permit(:farmer_first_name, :farmer_last_name, :farm_name, :address, :city, :state, :country, :phone, :zip, :email_address, :plant_id, :start_date, :end_date, :description, :latitude, :longitude, :elevation)
    end
end
