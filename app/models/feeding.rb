class Feeding < ActiveRecord::Base
  belongs_to :beehive
  belongs_to :food_type
  belongs_to :quantity_unit
  belongs_to :supplements
end
