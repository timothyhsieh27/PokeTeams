#
class Team < ApplicationRecord
  has_many :trainers

  validates_presence_of :squad_name
end
