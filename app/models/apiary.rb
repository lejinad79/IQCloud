class Apiary < ActiveRecord::Base
  belongs_to :apiary_type
  belongs_to :apiary_forage_type
end
