class Plant < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :system_setup

  scope :owner, -> (v) { where(:apiary_id => v) }

  after_save :after_Plant

  private

  def after_Plant
    apiary = Apiary.where(:owner_id => Beekeeper.current).last
    system_setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).last
    Plant.where(:system_setup_id => system_setup.id).update_all(:apiary_id => apiary.id)

  end

end
