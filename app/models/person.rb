class Person < ActiveRecord::Base
  validates :age, :gender, :district, :name, presence: true
  belongs_to :district  
class Tribute < Person
  belongs_to :escort
end
class Escort < Person
  has_many :tributes
end

end