class ApiaryForageType < ActiveRecord::Base
  belongs_to :apiary
  scope :owner, -> (v) { where(:apiary_id => v) }

  after_save :after_Apiary_Forage_Type

  private

  def after_Apiary_Forage_Type
    apiary = Apiary.where(:owner_id => Beekeeper.current).last
    system_setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).last
    ApiaryForageType.where(:system_setup_id => system_setup.id).update_all(:apiary_id => apiary.id)

  end

end
