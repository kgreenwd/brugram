# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all
Comment.delete_all

puts "Creating photos..."

Photo.create public: true, caption: "firsttttt lol", image: "http://cdn.directv.com/cms3/why_directv/comcast/lg__number_one.png", user_id: User.first.id