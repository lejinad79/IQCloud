class HarvestType < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :system_setup

  scope :owner, -> (v) { where(:apiary_id => v) }

  after_save :after_Harvest_Type

  private

  def after_Harvest_Type
    apiary = Apiary.where(:owner_id => Beekeeper.current).last
    system_setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).last
    HarvestType.where(:system_setup_id => system_setup.id).update_all(:apiary_id => apiary.id)

  end

end
