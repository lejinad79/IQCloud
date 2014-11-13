class BeehiveGroupsController < ApplicationController
  before_action :set_beehive_group, only: [:show, :edit, :update, :destroy]

  # GET /beehive_groups
  # GET /beehive_groups.json
  def index
    @beehive_groups = BeehiveGroup.all
  end

  # GET /beehive_groups/1
  # GET /beehive_groups/1.json
  def show
  end

  # GET /beehive_groups/new
  def new
    @beehive_group = BeehiveGroup.new
  end

  # GET /beehive_groups/1/edit
  def edit
  end

  # POST /beehive_groups
  # POST /beehive_groups.json
  def create
    @beehive_group = BeehiveGroup.new(beehive_group_params)

    respond_to do |format|
      if @beehive_group.save
        format.html { redirect_to @beehive_group, notice: 'Beehive group was successfully created.' }
        format.json { render :show, status: :created, location: @beehive_group }
      else
        format.html { render :new }
        format.json { render json: @beehive_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beehive_groups/1
  # PATCH/PUT /beehive_groups/1.json
  def update
    respond_to do |format|
      if @beehive_group.update(beehive_group_params)
        format.html { redirect_to @beehive_group, notice: 'Beehive group was successfully updated.' }
        format.json { render :show, status: :ok, location: @beehive_group }
      else
        format.html { render :edit }
        format.json { render json: @beehive_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beehive_groups/1
  # DELETE /beehive_groups/1.json
  def destroy
    @beehive_group.destroy
    respond_to do |format|
      format.html { redirect_to beehive_groups_url, notice: 'Beehive group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beehive_group
      @beehive_group = BeehiveGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beehive_group_params
      params.require(:beehive_group).permit(:name, :apiary_id, :beehive_group_type_id, :group_type_id, :description, :latitude, :longitude, :elevation, :notes)
    end
end
