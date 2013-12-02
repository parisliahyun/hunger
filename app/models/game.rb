class Game < ActiveRecord::Base
  has_many :tributes
  has_many :rounds
end