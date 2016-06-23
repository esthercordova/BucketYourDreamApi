# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Item.create([
  { title: 'Be a cool person', description: 'Trying to be cool for a day', status: true },
  {title: 'Awesome dance party', description: 'Dance naked in the sun', status: false },
  {title: 'Funny faces', description: 'Make funny faces at your mom', status: true },
  ])
