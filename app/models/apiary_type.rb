class ApiaryType < ActiveRecord::Base
  belongs_to :apiary
  scope :owner, -> (v) { where(:apiary_id => v) }
end
