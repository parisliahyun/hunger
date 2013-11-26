class Event < ActiveRecord::Base
  class Reaping < Event

    def initialize(name)
      @name = name
      @people = []
      @tributes = []
      @gamemakers = []
    end

    def name
      @name
    end

    def tributes
      @tributes
    end

    # def select_female_tribute
    #   eligible_people = []
    #   @people.each do |person|
    #     if person.age > 12  && person.gender == "f"
    #       eligible_people << person
    #       @tributes.push(eligible_people.sample)
    #     end
    # end

    # def select_female_tribute(name)
    #   @tributes.push({name: name})
    # end

    # def select_female_tribute(name)
    #   @tributes.push({name: name})
    # end

    def gamemakers
      @gamemakers
    end

    def add_gamemaker(name)
      @gamemakers.push({name: name})
    end

  end
end