class Event < ActiveRecord::Base

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

  def gamemakers
    @gamemakers
  end

  def add_gamemaker(name)
    @gamemakers.push({name: name})
  end

end