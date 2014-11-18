class BeehiveGroupType < ActiveRecord::Base
  belongs_to :apiary
  scope :owner, -> (v) { where(:apiary_id => v) }

  after_save :after_Beehive_Group_Type

  private

  def after_Beehive_Group_Type
    apiary = Apiary.where(:owner_id => Beekeeper.current).last
    system_setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).last
    BeehiveGroupType.where(:system_setup_id => system_setup.id).update_all(:apiary_id => apiary.id)

  end

end
