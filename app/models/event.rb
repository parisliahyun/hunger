class Event < ActiveRecord::Base
class Reaping < Event

  def initialize(name)
    @name = name
    @tributes = []
    @gamemakers = []
  end

  def name
    @name
  end

  def tributes
    @tributes
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
end