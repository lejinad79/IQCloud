class Apiary < ActiveRecord::Base
  belongs_to :apiary_type
  belongs_to :apiary_forage_type
  belongs_to :owner, :class_name => Beekeeper
  has_one :apiary_parameters_setup
  has_one :map, :as => :mapable, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :map, :allow_destroy => true
  has_and_belongs_to_many :beekeepers
  scope :owner, -> (v) { where(:owner_id => v) }
end
