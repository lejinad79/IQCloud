class Harvest < ActiveRecord::Base
  belongs_to :beehive
  belongs_to :type
  belongs_to :quantity_unit
end
