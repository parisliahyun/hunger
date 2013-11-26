class Person < ActiveRecord::Base
  validates :age, :gender, :district, :name, presence: true
  belongs_to :district


# class Tribute < Person; end

  


end