class BadPlacesController < ApplicationController
  before_action :set_bad_place, only: [:show, :edit, :update, :destroy]

  # GET /bad_places
  # GET /bad_places.json
  def index
    @bad_places = BadPlace.all
  end

  # GET /bad_places/1
  # GET /bad_places/1.json
  def show
  end

  # GET /bad_places/new
  def new
    @bad_place = BadPlace.new
  end

  # GET /bad_places/1/edit
  def edit
  end

  # POST /bad_places
  # POST /bad_places.json
  def create
    @bad_place = BadPlace.new(bad_place_params)

    respond_to do |format|
      if @bad_place.save
        format.html { redirect_to @bad_place, notice: 'Bad place was successfully created.' }
        format.json { render :show, status: :created, location: @bad_place }
      else
        format.html { render :new }
        format.json { render json: @bad_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bad_places/1
  # PATCH/PUT /bad_places/1.json
  def update
    respond_to do |format|
      if @bad_place.update(bad_place_params)
        format.html { redirect_to @bad_place, notice: 'Bad place was successfully updated.' }
        format.json { render :show, status: :ok, location: @bad_place }
      else
        format.html { render :edit }
        format.json { render json: @bad_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bad_places/1
  # DELETE /bad_places/1.json
  def destroy
    @bad_place.destroy
    respond_to do |format|
      format.html { redirect_to bad_places_url, notice: 'Bad place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bad_place
      @bad_place = BadPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bad_place_params
      params.require(:bad_place).permit(:name, :description, :latitude, :longitude, :elevation)
    end
end
