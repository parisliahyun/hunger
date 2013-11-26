class Event < ActiveRecord::Base
class Reaping < Event; end

  def initialize(name)
    @name = name
    @citizens = []
    @tributes = []
    @gamemakers = []
  end

  def name
    @name
  end

  def citizens
    @citizens
  end

  def find_by_gender(gender)
    people.first do |person|
      person[:gender] == gender
    end
  end

  def find_by_age(age)
    people.first do |person|
      person[:age] == age
    end
  end

  def tributes
    @tributes
  end

  def add_citizens(name)
    @citizens.push({name: name})
  end

  def select_tribute(name)
    @tributes.push({name: name})
  end

  def gamemakers
    @gamemakers
  end

  def add_gamemaker(name)
    @gamemakers.push({name: name})
  end

end