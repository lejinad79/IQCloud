class Apiary < ActiveRecord::Base
  belongs_to :apiary_type
  belongs_to :apiary_forage_type
  has_and_belongs_to_many :beekeepers
end
