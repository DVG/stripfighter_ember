["Space", "Ping Pong", "Being Lost", "The Future", "Circus", "Flatulence", "County Fair",
"Mermaids", "Ukulele", "Mystery", "Naughty", "Roller Skates", "Dinosaurs", "Cats", "Cars", "Candy", "Religion"].each do |topic|
  Prompt.find_or_create_by_content topic
end