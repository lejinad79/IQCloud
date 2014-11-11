class ApiaryParametersSetupsController < ApplicationController
  before_action :set_apiary_parameters_setup, only: [:show, :edit, :update, :destroy]

  # GET /apiary_parameters_setups
  # GET /apiary_parameters_setups.json
  def index
    @apiary_parameters_setups = ApiaryParametersSetup.owner(current_beekeeper.current_apiary_id).all
  end

  # GET /apiary_parameters_setups/1
  # GET /apiary_parameters_setups/1.json
  def show
  end

  # GET /apiary_parameters_setups/new
  def new
    @apiary_parameters_setup = ApiaryParametersSetup.new
    @apiary_parameters_setup.apiary_types.build
    @apiary_parameters_setup.apiary_forage_types.build
  end

  # GET /apiary_parameters_setups/1/edit
  def edit
  end

  # POST /apiary_parameters_setups
  # POST /apiary_parameters_setups.json
  def create
    @apiary_parameters_setup = ApiaryParametersSetup.new(apiary_parameters_setup_params)
    @apiary_parameters_setup.apiary_id = current_beekeeper.current_apiary_id
    respond_to do |format|
      if @apiary_parameters_setup.save
        format.html { redirect_to @apiary_parameters_setup, notice: 'Apiary parameters setup was successfully created.' }
        format.json { render :show, status: :created, location: @apiary_parameters_setup }
      else
        format.html { render :new }
        format.json { render json: @apiary_parameters_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apiary_parameters_setups/1
  # PATCH/PUT /apiary_parameters_setups/1.json
  def update
    #respond_to do |format|
      if @apiary_parameters_setup.update(apiary_parameters_setup_params)
        apiary = Apiary.where(["owner_id = ?", current_beekeeper.id]).last
        redirect_to({:controller => 'apiaries', :action => 'edit', :id => apiary.id})
        #format.html { redirect_to @apiary_parameters_setup, notice: 'Apiary parameters setup was successfully updated.' }
        #format.json { render :show, status: :ok, location: @apiary_parameters_setup }
      else
        #format.html { render :edit }
        #format.json { render json: @apiary_parameters_setup.errors, status: :unprocessable_entity }
      end
    #end
  end

  # DELETE /apiary_parameters_setups/1
  # DELETE /apiary_parameters_setups/1.json
  def destroy
    @apiary_parameters_setup.destroy
    respond_to do |format|
      format.html { redirect_to apiary_parameters_setups_url, notice: 'Apiary parameters setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apiary_parameters_setup
      @apiary_parameters_setup = ApiaryParametersSetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apiary_parameters_setup_params
      params.require(:apiary_parameters_setup).permit(:name,
      apiary_types_attributes: [:id, :name, :apiary_parameters_setup_id, :apiary_id, :_destroy],
      apiary_forage_types_attributes: [:id, :name, :owner_id, :_destroy]
      )
    end

end
