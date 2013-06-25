# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Space", "Ping Pong", "Being Lost", "The Future", "The Areola", "Circus", "Flatulence", "County Fair",
"Mermaids", "Ukulele", "Mystery", "Naughty", "Roller Skates", "Dinosaurs", "Cats", "Cars", "Candy", "Religion"].each do |topic|
  Prompt.find_or_create_by_content topic
end