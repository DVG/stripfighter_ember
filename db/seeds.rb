["Space", "Ping Pong", "Being Lost", "The Future", "Circus", "Flatulence", "County Fair",
"Mermaids", "Ukulele", "Mystery", "Naughty", "Roller Skates", "Dinosaurs", "Cats", "Cars", "Candy", "Religion"].each do |topic|
  Prompt.find_or_create_by_content topic
end

unless User.count > 0
  User.create(email: "devryguy@gmail.com", password: "supersecret", password_confirmation: "supersecret")
end

  
unless Comic.count > 0
  Comic.create(prompt_one_id: Prompt.find_by_content("The Future").id, prompt_two_id: Prompt.find_by_content("Being Lost").id, 
    image: File.open("#{Rails.root}/db/seed_images/future_being_lost.jpg"))
  Comic.create(prompt_one_id: Prompt.find_by_content("The Future").id, prompt_two_id: Prompt.find_by_content("Being Lost").id, 
    image: File.open("#{Rails.root}/db/seed_images/future_being_lost_02.jpg"))

  Comic.create(prompt_one_id: Prompt.find_by_content("Candy").id, prompt_two_id: Prompt.find_by_content("Religion").id, 
    image: File.open("#{Rails.root}/db/seed_images/candy_religion_01.png"))
  Comic.create(prompt_one_id: Prompt.find_by_content("Candy").id, prompt_two_id: Prompt.find_by_content("Religion").id, 
    image: File.open("#{Rails.root}/db/seed_images/candy_religion_02.png"))

  Comic.create(prompt_one_id: Prompt.find_by_content("Cats").id, prompt_two_id: Prompt.find_by_content("Cars").id, 
    image: File.open("#{Rails.root}/db/seed_images/cats_cars_01.png"))
  Comic.create(prompt_one_id: Prompt.find_by_content("Cats").id, prompt_two_id: Prompt.find_by_content("Cars").id, 
    image: File.open("#{Rails.root}/db/seed_images/cats_cars_02.png"))

  Comic.create(prompt_one_id: Prompt.find_by_content("County Fair").id, prompt_two_id: Prompt.find_by_content("Flatulence").id, 
    image: File.open("#{Rails.root}/db/seed_images/county_fair_flatulence_01.jpg"))
  Comic.create(prompt_one_id: Prompt.find_by_content("County Fair").id, prompt_two_id: Prompt.find_by_content("Flatulence").id, 
    image: File.open("#{Rails.root}/db/seed_images/county_fair_flatulence_02.jpg"))

  Comic.create(prompt_one_id: Prompt.find_by_content("Dinosaurs").id, prompt_two_id: Prompt.find_by_content("Roller Skates").id, 
    image: File.open("#{Rails.root}/db/seed_images/dinosaurs_roller_skates_01.jpg"))
  Comic.create(prompt_one_id: Prompt.find_by_content("Dinosaurs").id, prompt_two_id: Prompt.find_by_content("Roller Skates").id, 
    image: File.open("#{Rails.root}/db/seed_images/dinosaurs_roller_skates_02.jpg"))

  Comic.create(prompt_one_id: Prompt.find_by_content("Mermaids").id, prompt_two_id: Prompt.find_by_content("Ukulele").id, 
    image: File.open("#{Rails.root}/db/seed_images/mermaids_ukulele_01.jpg"))
  Comic.create(prompt_one_id: Prompt.find_by_content("Mermaids").id, prompt_two_id: Prompt.find_by_content("Ukulele").id, 
    image: File.open("#{Rails.root}/db/seed_images/mermaids_ukulele_02.jpg"))

  Comic.create(prompt_one_id: Prompt.find_by_content("Ping Pong").id, prompt_two_id: Prompt.find_by_content("Space").id, 
    image: File.open("#{Rails.root}/db/seed_images/ping_pong_space_01.jpg"))
  Comic.create(prompt_one_id: Prompt.find_by_content("Ping Pong").id, prompt_two_id: Prompt.find_by_content("Space").id, 
    image: File.open("#{Rails.root}/db/seed_images/ping_pong_space_02.jpg"))
end