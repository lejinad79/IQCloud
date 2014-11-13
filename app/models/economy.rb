class Economy < ActiveRecord::Base
  belongs_to :beehive
  belongs_to :category
  belongs_to :type
end
