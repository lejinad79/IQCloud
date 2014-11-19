class ApiariesController < ApplicationController
  before_action :set_apiary, only: [:show, :edit, :update, :destroy]

  def index
    @apiaries = Apiary.where(:owner_id => current_beekeeper.id).all
  end

  def show
  end

  def new
    @apiary = Apiary.new
    @apiaries = Apiary.where(:owner_id => current_beekeeper.id).all
  end

  def edit
  end

  def create
    @apiary = Apiary.new(apiary_params)
    @apiary.owner_id = current_beekeeper.id
    respond_to do |format|
      if @apiary.save
        format.html { redirect_to @apiary, notice: 'Apiary was successfully created.' }
        format.json { render :show, status: :created, location: @apiary }
      else
        format.html { render :new }
        format.json { render json: @apiary.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @apiary.update(apiary_params)
        format.html { redirect_to @apiary, notice: 'Apiary was successfully updated.' }
        format.json { render :show, status: :ok, location: @apiary }
      else
        format.html { render :edit }
        format.json { render json: @apiary.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @apiary.destroy
    respond_to do |format|
      format.html { redirect_to apiaries_url, notice: 'Apiary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_apiary
      @apiary = Apiary.find(params[:id])
    end

    def apiary_params
      params.require(:apiary).permit(
      :name,
      :apiary_type_id,
      :apiary_forage_type_id,
      :description,
      :created_at,
      :updated_at,
      :owner_id,
      :latitude,
      :longitude,
      :notes
      )
    end
end
