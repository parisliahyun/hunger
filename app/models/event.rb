class Event < ActiveRecord::Base
  class Round < Event
    validates :game_id, :name, presence: true, uniqueness: true
    belongs_to :game
    has_and_belongs_to_many :tributes, :join_table => "rounds_games"

      def does_not_exceed_round_limit
        unless game && game.rounds.count <= 3
          errors.add(:game, "Too many rounds in this game!")
        end
      end
  end

# for reaping

  def find_by_gender(gender)
    #binding.pry
    Person.where(gender: gender)
  end

  def find_by_age(age)
    Person.where(age: age)
  end

  def find_by_district(id)
    District.where(id: id)
  end

  def select_tribute(gender, district)
    gender = find_by_gender(gender)
    age = find_by_age(12..18)
    tributes = district.citizens && gender && age
    tributes.sample
  end

  def tributes
    @tributes
  end

  def add_citizens(name, age, gender, district)
    Person.create(age: age, gender: gender, district: district, name: name, type: "Citizen")
  end

  # for round



end