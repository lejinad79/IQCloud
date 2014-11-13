class Beehive < ActiveRecord::Base
  belongs_to :beehive_type
  belongs_to :apiary
  belongs_to :group
  belongs_to :colony_source
  belongs_to :supers
  belongs_to :from_apiary
  belongs_to :from_beehive
end
