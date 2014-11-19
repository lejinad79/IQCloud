class Weight < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :system_setup

  scope :owner, -> (v) { where(:apiary_id => v) }

  after_save :after_Weight

  private

  def after_Weight
    apiary = Apiary.where(:owner_id => Beekeeper.current).last
    system_setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).last
    Weight.where(:system_setup_id => system_setup.id).update_all(:apiary_id => apiary.id)

  end

end
