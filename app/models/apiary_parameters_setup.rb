class ApiaryParametersSetup < ActiveRecord::Base
  belongs_to :apiary
  has_many :beehive_types
  has_many :apiary_types
  has_many :apiary_forage_types
  has_many :beehive_group_types
  accepts_nested_attributes_for :beehive_types, :allow_destroy => true
  accepts_nested_attributes_for :apiary_types, :allow_destroy => true
  accepts_nested_attributes_for :apiary_forage_types, :allow_destroy => true
  accepts_nested_attributes_for :beehive_group_types, :allow_destroy => true
  scope :owner, -> (v) { where(:apiary_id => v) }
end
