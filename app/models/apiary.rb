class Apiary < ActiveRecord::Base
  belongs_to :apiary_type
  belongs_to :apiary_forage_type
  belongs_to :owner, :class_name => Beekeeper
  has_one :system_setup
  has_and_belongs_to_many :beekeepers
end
