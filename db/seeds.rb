["Space", "Ping Pong", "Being Lost", "The Future", "Circus", "Flatulence", "County Fair",
"Mermaids", "Ukulele", "Mystery", "Naughty", "Roller Skates", "Dinosaurs", "Cats", "Cars", "Candy", "Religion"].each do |topic|
  Prompt.find_or_create_by_content topic
end

unless User.count > 0
  User.create(email: "devryguy@gmail.com", password: "supersecret", password_confirmation: "supersecret")
end