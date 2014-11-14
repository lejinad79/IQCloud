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
    apiary = Apiary.where(["owner_id = ?", current_beekeeper.id]).last
    current_beekeeper.current_apiary_id = apiary.id
    current_beekeeper.save!
    setup = SystemSetup.new
    setup.apiary_id = apiary.id
    setup.beekeeper_id = current_beekeeper.id
    setup.save!
  end

  private

  def apiary_params
    params.require(:apiary).permit(:name, :description, {:beekeeper_ids => []})
  end

  def finish_wizard_path
    setup = SystemSetup.where(["apiary_id = ?", current_beekeeper.current_apiary.id]).last
    edit_system_setup_path(setup.id)
  end

end
