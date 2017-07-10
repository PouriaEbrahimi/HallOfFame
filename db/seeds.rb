# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

memerList = [
  [ "Pouria", "Unknown", 69],
  [ "Prakash", "Gay", 34],
  [ "Logan", "Homo", 134],
]

memerList.each do |name, gender, age|
  Memer.create(name: name, gender: gender, age: age)
end