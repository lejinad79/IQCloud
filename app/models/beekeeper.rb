class Beekeeper < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :apiaries

  def current_apiary
    apiary = Apiary.find(self.current_apiary_id)
  end

  def self.current
    Thread.current[:beekeeper]
  end

  def self.current=(beekeeper)
    Thread.current[:beekeeper] = beekeeper
  end

end
