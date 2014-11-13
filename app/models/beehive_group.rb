class BeehiveGroup < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :beehive_group_type
  belongs_to :group_type
end
