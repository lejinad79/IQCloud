class ApiaryWorksController < ApplicationController
  before_action :set_apiary_work, only: [:show, :edit, :update, :destroy]

  # GET /apiary_works
  # GET /apiary_works.json
  def index
    @apiary_works = ApiaryWork.all
  end

  # GET /apiary_works/1
  # GET /apiary_works/1.json
  def show
  end

  # GET /apiary_works/new
  def new
    @apiary_work = ApiaryWork.new
  end

  # GET /apiary_works/1/edit
  def edit
  end

  # POST /apiary_works
  # POST /apiary_works.json
  def create
    @apiary_work = ApiaryWork.new(apiary_work_params)

    respond_to do |format|
      if @apiary_work.save
        format.html { redirect_to @apiary_work, notice: 'Apiary work was successfully created.' }
        format.json { render :show, status: :created, location: @apiary_work }
      else
        format.html { render :new }
        format.json { render json: @apiary_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apiary_works/1
  # PATCH/PUT /apiary_works/1.json
  def update
    respond_to do |format|
      if @apiary_work.update(apiary_work_params)
        format.html { redirect_to @apiary_work, notice: 'Apiary work was successfully updated.' }
        format.json { render :show, status: :ok, location: @apiary_work }
      else
        format.html { render :edit }
        format.json { render json: @apiary_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apiary_works/1
  # DELETE /apiary_works/1.json
  def destroy
    @apiary_work.destroy
    respond_to do |format|
      format.html { redirect_to apiary_works_url, notice: 'Apiary work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apiary_work
      @apiary_work = ApiaryWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apiary_work_params
      params.require(:apiary_work).permit(:name, :description, :notes, :apiary_id, :hives_id, :work_information_type_id, :date)
    end
end
