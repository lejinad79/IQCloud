class ApiaryForageType < ActiveRecord::Base
  belongs_to :owner, :class_name => ApiaryParametersSetup
end
