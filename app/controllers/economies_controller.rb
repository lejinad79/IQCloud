class EconomiesController < ApplicationController
  before_action :set_economy, only: [:show, :edit, :update, :destroy]

  # GET /economies
  # GET /economies.json
  def index
    @economies = Economy.all
  end

  # GET /economies/1
  # GET /economies/1.json
  def show
  end

  # GET /economies/new
  def new
    @economy = Economy.new
  end

  # GET /economies/1/edit
  def edit
  end

  # POST /economies
  # POST /economies.json
  def create
    @economy = Economy.new(economy_params)

    respond_to do |format|
      if @economy.save
        format.html { redirect_to @economy, notice: 'Economy was successfully created.' }
        format.json { render :show, status: :created, location: @economy }
      else
        format.html { render :new }
        format.json { render json: @economy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economies/1
  # PATCH/PUT /economies/1.json
  def update
    respond_to do |format|
      if @economy.update(economy_params)
        format.html { redirect_to @economy, notice: 'Economy was successfully updated.' }
        format.json { render :show, status: :ok, location: @economy }
      else
        format.html { render :edit }
        format.json { render json: @economy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economies/1
  # DELETE /economies/1.json
  def destroy
    @economy.destroy
    respond_to do |format|
      format.html { redirect_to economies_url, notice: 'Economy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economy
      @economy = Economy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def economy_params
      params.require(:economy).permit(:beehive_id, :name, :category_id, :type_id, :description, :value, :date)
    end
end
