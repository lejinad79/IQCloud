class ApiaryParametersSetupsController < ApplicationController
  before_action :set_apiary_parameters_setup, only: [:show, :edit, :update, :destroy]

  def index
    @apiary_parameters_setups = ApiaryParametersSetup.owner(current_beekeeper.id).all
  end

  def show
  end

  def new
    @apiary_parameters_setup = ApiaryParametersSetup.new
    @apiary_parameters_setup.beehive_types.build
    @apiary_parameters_setup.apiary_types.build
    @apiary_parameters_setup.apiary_forage_types.build
    @apiary_parameters_setup.beehive_group_types.build
  end

  def edit
  end

  def create
    @apiary_parameters_setup = ApiaryParametersSetup.new(apiary_parameters_setup_params)
    #@apiary_parameters_setup.apiary_id = current_beekeeper.current_apiary_id
    @apiary_parameters_setup.owner_id = current_beekeeper.id
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

  def update
    #respond_to do |format|
      if @apiary_parameters_setup.update(apiary_parameters_setup_params)
        #i = ApiaryParametersSetup.where(["owner_id = ?", current_beekeeper.id]).last
        #if i == true
          apiary = Apiary.where(["owner_id = ?", current_beekeeper.id]).last
          redirect_to({:controller => 'apiaries', :action => 'edit', :id => apiary.id})
        #else
        ##format.html { redirect_to @apiary_parameters_setup, notice: 'Apiary parameters setup was successfully updated.' }
        ##format.json { render :show, status: :ok, location: @apiary_parameters_setup }
        #end
      else
        ##format.html { render :edit }
        ##format.json { render json: @apiary_parameters_setup.errors, status: :unprocessable_entity }
      end
    ##end
  end

  def destroy
    @apiary_parameters_setup.destroy
    respond_to do |format|
      format.html { redirect_to apiary_parameters_setups_url, notice: 'Apiary parameters setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_apiary_parameters_setup
      @apiary_parameters_setup = ApiaryParametersSetup.find(params[:id])
    end

    def apiary_parameters_setup_params
      params.require(:apiary_parameters_setup).permit(:apiary_id,
      beehive_types_attributes: [:id, :name, :apiary_parameters_setup_id, :apiary_id, :_destroy],
      apiary_types_attributes: [:id, :name, :apiary_parameters_setup_id, :apiary_id, :_destroy],
      apiary_forage_types_attributes: [:id, :name, :apiary_parameters_setup_id, :apiary_id, :_destroy],
      beehive_group_types_attributes: [:id, :name, :apiary_parameters_setup_id, :apiary_id, :_destroy],
      )
    end

end
