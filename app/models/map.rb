class Map < ActiveRecord::Base
  belongs_to :mapable, :polymorphic => true
end
