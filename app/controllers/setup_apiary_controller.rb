class SetupApiaryController < ApplicationController
  layout 'wizard'
  include Wicked::Wizard
  steps :start

  def show
    @beekeeper = current_beekeeper
    case step
    when :start
      @apiary = Apiary.new
    end
    render_wizard
  end

  def update
    @beekeeper = current_beekeeper
    @apiary = Apiary.new(apiary_params)
    @apiary.beekeepers << @beekeeper
    @apiary.owner_id = current_beekeeper.id
    render_wizard @apiary
    apiary = Apiary.where(:owner_id => current_beekeeper.id).take
    current_beekeeper.current_apiary_id = apiary.id
    current_beekeeper.save!
    #Apiary.where(["owner_id ?", ""]).destroy_all
  end

  private

  def apiary_params
    params.require(:apiary).permit(:name, :description, {:beekeeper_ids => []})
  end

  def finish_wizard_path
    setup = SystemSetup.new
    setup.apiary_id = current_beekeeper.current_apiary_id
    setup.beekeeper_id = current_beekeeper.id
    setup.save!
    s = SystemSetup.where(:apiary_id => current_beekeeper.current_apiary_id).last
    #r = s.id - 1
    edit_system_setup_path(s.id)
  end

end
