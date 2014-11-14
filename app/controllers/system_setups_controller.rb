class SystemSetupsController < ApplicationController
  before_action :set_system_setup, only: [:show, :edit, :update, :destroy]
  before_filter :set_current_beekeeper_id
  before_filter :set_current_beekeeper_count

  def index
    @system_setups = SystemSetup.where(:beekeeper_id => current_beekeeper.id).all
  end

  def show
  end

  def new
    @system_setup = SystemSetup.new
  end

  def edit
  end

  def create
    @system_setup = SystemSetup.new(system_setup_params)
    @system_setup.beekeeper_id = current_beekeeper.id
    #respond_to do |format|
      if @system_setup.save
        redirect_To_Apiary
        #format.html { redirect_to @system_setup, notice: 'System setup was successfully created.' }
        #format.json { render :show, status: :created, location: @system_setup }
      else
        #format.html { render :new }
        #format.json { render json: @system_setup.errors, status: :unprocessable_entity }
      end
    #end
  end

  def update
    respond_to do |format|
      if @system_setup.update(system_setup_params)
        #redirect_To_Apiary
        format.html { redirect_to @system_setup, notice: 'System setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_setup }
      else
        format.html { render :edit }
        format.json { render json: @system_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @system_setup.destroy
    respond_to do |format|
      format.html { redirect_to system_setups_url, notice: 'System setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_system_setup
      @system_setup = SystemSetup.find(params[:id])
    end

    def system_setup_params
      params.require(:system_setup).permit(:name)
    end

    def redirect_To_Apiary
      apiary = Apiary.where(:owner_id => current_beekeeper.id).last
      redirect_to edit_apiary_path(apiary.id)
    end

end
