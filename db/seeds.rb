# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.destroy_all

katniss = Person.create(type: "Tribute", name: "katniss everdeen", age: 16, gender: "female")
peeta = Person.create(type: "Tribute", name: "Peeta", age: 16, gender: "male")
