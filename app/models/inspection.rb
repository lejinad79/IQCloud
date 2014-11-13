class Inspection < ActiveRecord::Base
  belongs_to :beehive
  belongs_to :disease
end
