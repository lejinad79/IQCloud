class SystemSetup < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :beekeeper
  has_many :beehive_types
  has_many :apiary_types
  has_many :apiary_forage_types
  has_many :beehive_group_types
  accepts_nested_attributes_for :beehive_types, :allow_destroy => true
  accepts_nested_attributes_for :apiary_types, :allow_destroy => true
  accepts_nested_attributes_for :apiary_forage_types, :allow_destroy => true
  accepts_nested_attributes_for :beehive_group_types, :allow_destroy => true

  before_create :before_System_Setup_Create

  private

  def before_System_Setup_Create
    apiary = Apiary.new
    apiary.name = "Your new apiary"
    apiary.owner_id = Beekeeper.current
    apiary.save!
  end

  def after_System_Setup_Create
    apiary = Apiary.where(:owner_id => '').all
    apiary.destroy!
  end

end
