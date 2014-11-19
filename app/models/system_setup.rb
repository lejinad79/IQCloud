class SystemSetup < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :beekeeper
  has_many :beehive_types
  has_many :apiary_types
  has_many :apiary_forage_types
  has_many :beehive_group_types
  has_many :plants
  has_many :diseases
  has_many :harvest_types
  has_many :food_types
  has_many :supplements
  has_many :colony_sources
  has_many :activities
  has_many :temperatures
  has_many :lengths
  has_many :weights
  has_many :currencies
  has_many :supers
  accepts_nested_attributes_for :beehive_types, :allow_destroy => true
  accepts_nested_attributes_for :apiary_types, :allow_destroy => true
  accepts_nested_attributes_for :apiary_forage_types, :allow_destroy => true
  accepts_nested_attributes_for :beehive_group_types, :allow_destroy => true
  accepts_nested_attributes_for :plants, :allow_destroy => true
  accepts_nested_attributes_for :diseases, :allow_destroy => true
  accepts_nested_attributes_for :harvest_types, :allow_destroy => true
  accepts_nested_attributes_for :food_types, :allow_destroy => true
  accepts_nested_attributes_for :supplements, :allow_destroy => true
  accepts_nested_attributes_for :colony_sources, :allow_destroy => true
  accepts_nested_attributes_for :activities, :allow_destroy => true
  accepts_nested_attributes_for :temperatures, :allow_destroy => true
  accepts_nested_attributes_for :lengths, :allow_destroy => true
  accepts_nested_attributes_for :weights, :allow_destroy => true
  accepts_nested_attributes_for :currencies, :allow_destroy => true
  accepts_nested_attributes_for :supers, :allow_destroy => true

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
