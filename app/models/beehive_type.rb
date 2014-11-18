class BeehiveType < ActiveRecord::Base
  belongs_to :apiary
  scope :owner, -> (v) { where(:apiary_id => v) }

  after_save :after_Beehive_Type

  private

  def after_Beehive_Type
    apiary = Apiary.where(:owner_id => Beekeeper.current).last
    system_setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).last
    BeehiveType.where(:system_setup_id => system_setup.id).update_all(:apiary_id => apiary.id)

  end

end
