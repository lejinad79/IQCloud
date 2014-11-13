class ApiaryWork < ActiveRecord::Base
  belongs_to :apiary
  belongs_to :hives
  belongs_to :work_information_type
end
