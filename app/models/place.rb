class Place < ActiveRecord::Base
class District < Place
  has_many :people
end 


end  