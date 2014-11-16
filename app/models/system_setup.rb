class SystemSetup < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :beekeeper

  before_create :before_System_Setup_Create
  after_create :after_System_Setup_Create

  private

  def before_System_Setup_Create
    apiary = Apiary.new
    apiary.name = "Your new apiary"
    apiary.owner_id = Beekeeper.current
    apiary.save!
  end

  def after_System_Setup_Create
    setup = SystemSetup.where(:beekeeper_id => Beekeeper.current).take
    apiary = Apiary.where(:owner_id => Beekeeper.current).take
    setup.apiary_id = apiary.id
    setup.save!
  end

end
