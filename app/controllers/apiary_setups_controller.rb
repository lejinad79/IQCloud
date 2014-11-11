class ApiarySetupsController < ApplicationController
  before_action :set_apiary_setup, only: [:show, :edit, :update, :destroy]

  # GET /apiary_setups
  # GET /apiary_setups.json
  def index
    @apiary_setups = ApiarySetup.all
  end

  # GET /apiary_setups/1
  # GET /apiary_setups/1.json
  def show
  end

  # GET /apiary_setups/new
  def new
    @apiary_setup = ApiarySetup.new
  end

  # GET /apiary_setups/1/edit
  def edit
  end

  # POST /apiary_setups
  # POST /apiary_setups.json
  def create
    @apiary_setup = ApiarySetup.new(apiary_setup_params)

    respond_to do |format|
      if @apiary_setup.save
        format.html { redirect_to @apiary_setup, notice: 'Apiary setup was successfully created.' }
        format.json { render :show, status: :created, location: @apiary_setup }
      else
        format.html { render :new }
        format.json { render json: @apiary_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apiary_setups/1
  # PATCH/PUT /apiary_setups/1.json
  def update
    respond_to do |format|
      if @apiary_setup.update(apiary_setup_params)
        format.html { redirect_to @apiary_setup, notice: 'Apiary setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @apiary_setup }
      else
        format.html { render :edit }
        format.json { render json: @apiary_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apiary_setups/1
  # DELETE /apiary_setups/1.json
  def destroy
    @apiary_setup.destroy
    respond_to do |format|
      format.html { redirect_to apiary_setups_url, notice: 'Apiary setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apiary_setup
      @apiary_setup = ApiarySetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apiary_setup_params
      params[:apiary_setup]
    end
end
