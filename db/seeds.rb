# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
secondsInADay = (60*60*24)

puts "Beginning Seeding Process"

puts "Deleting All Old Seeds"
ItemAmenity.destroy_all
Booking.destroy_all
Photo.destroy_all
Item.destroy_all
User.destroy_all

puts "Creating New User Seeds"

chad = User.create(email: "chad@gmgemail.com", password: "password", remote_avatar_url: 'https://avatars0.githubusercontent.com/u/29354309?v=4')
kaveh = User.create(email: "kaveh@gmail.com", password: "password", remote_avatar_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/wnf628rqyln9aciahxcp.jpg')
nico = User.create(email: "nico@gmail.com", password: "password", remote_avatar_url: 'https://avatars0.githubusercontent.com/u/43278026?v=4')
puts "Creating the only landlord, the late great Sy Rashid"
sy = User.create(email: "sy@gmail.com", password: "holla123", remote_avatar_url: 'https://avatars2.githubusercontent.com/u/6656014?v=4')


puts "Creating Items"

# item1 = Item.create(address: "Barcelona", price: 69.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, user: sy, remote_photo_url: 'https://i.pinimg.com/originals/3a/73/40/3a734077ce6636193d7f924f15004366.jpg')
# item2 = Item.create(address: "Madrid", price: 20.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, user: sy, remote_photo_url: 'http://jesusgilhernandez.com/wp-content/uploads/2014/03/cookie-monster.jpg')
# item3 = Item.create(address: "London", price: 100.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, user: sy, remote_photo_url: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/72e3a9d7-8d5e-4cd7-b2c6-134f9b12addc/d6eq0mr-cb0e24e3-939b-4268-9f0a-848d1b2d87f4.png/v1/fill/w_894,h_894,strp/dragonite_flying_vector_by_konylice_d6eq0mr-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTAwMCIsInBhdGgiOiJcL2ZcLzcyZTNhOWQ3LThkNWUtNGNkNy1iMmM2LTEzNGY5YjEyYWRkY1wvZDZlcTBtci1jYjBlMjRlMy05MzliLTQyNjgtOWYwYS04NDhkMWIyZDg3ZjQucG5nIiwid2lkdGgiOiI8PTUwMDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.a55eeWKsSfQoZeST4pZQyYXPnpTp8DHsMabsttFcUBk')


item1 = Item.create(address: "Helsinki", price: 77, description: "The Chimera is a ferocious, fire breathing monstrosity that possessed the body and head of a lion with the head of a goat protruding from it’s back and a snake for a tail... Skills: Ice water, Laser arch, fire ball, ", name: "Meduphon", user: sy, remote_photo_url: 'https://cdn2us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2016/05/creature_from_the_black_lagoon_franchise_retrospective.jpg?itok=oow2GS2l')
item2 = Item.create(address: "Lisbon", price: 99, description: "The monster is feared and believed to have been an omen for storms, shipwrecks and other natural disasters... Skills: Laser eyes, Super punch, Immortality", name: "Typhon", user: sy, remote_photo_url: 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80')
item3 = Item.create(address: "Moscow", price: 130, description: "The monster is perhaps little known and does not appear in any traditional epic or popular legend. However her frightening appearance, and her ghastly tendency to feast on human blood and flesh, more than warrants her place as number seven on our list...  Skills: Fire breath, killer jump, Flying", name: "Medusa", user: sy, remote_photo_url: 'https://vignette.wikia.nocookie.net/movie-monster/images/e/e3/GiantBehemoth.png/revision/latest?cb=20180606174201')
item4 = Item.create(address: "Warsaw", price: 120, description: "This monster has the confounding ability to regrow any decapitated limbs with alarming speed... Skills: Assault Ribbon, Laser blade", name: "The Minotaur", user: sy, remote_photo_url: 'https://www.irishexaminer.com/remote/media.central.ie/media/images/a/AMonsterCallsScreenshot_large.jpg')
item5 = Item.create(address: "Berlin", price: 110, description: "Cerberus originally attacks with either a sickle, a sword, or his trademark club... Skills: Leaping Spider, flicker strike", name: "Cerberus", user: sy, remote_photo_url: 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80')
item6 = Item.create(address: "Oslo", price: 160, description: "It is said that the beast only had an appetite for living flesh and so would only allow the deceased spirits to pass, while consuming any living mortal who is foolish enough to come near him... Skills: Raise Zombie, Bone Cruncher, Immortality", name: "Charybdis", user: sy, remote_photo_url: 'https://media.npr.org/assets/img/2012/10/10/1750_bw_00011ad_wide-c577aaf6b246d5688d05ff05c81e2c157c568290-s800-c85.jpg')
item7 = Item.create(address: "Stockholm", price: 88, description: "This monster is best remembered for his affinity for devouring flesh and his cryptic home, deep within the confines of the twisted labyrinth... Skills: Fireball, Lightning Warp, Immortality", name: "Hydra", user: sy, remote_photo_url: 'http://cdn.collider.com/wp-content/uploads/2017/06/godzilla-1954.jpg')
item8 = Item.create(address: "Lyon", price: 160, description: "The supernatural forces that sustain this vampire beyond mortal death also endow them with immortality, heightened senses, and enhanced superhuman physical abilities as well as powers of mind control and mental abilities which make them physically superior to humans... Skills: Arctic breath, Cold Snap", name: "Empusa", user: sy, remote_photo_url: 'https://i1.wp.com/faroutmagazine.co.uk/wp-content/uploads/2019/07/Godzilla-1954.jpeg?w=1200&ssl=1')
item9 = Item.create(address: "Rome", price: 125, description: "This monster has the ability to adapt to sunlight and the power to render themselves invisible provided they are powerful enough... Skills: Burning Arrow, Cold Snap Immortality" , name: "Chimera", user: sy, remote_photo_url: 'https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2019/02/dream.jpg?ssl=1')
item10 = Item.create(address: "Paris", price: 170, description: "This is a monster that is dangerous because it can mimic a human's voice. It can use the voices of loved ones to lure victims into traps that it has set up... Skills: Lightning Arrow, Immortality", name: "Cyclops", user: sy, remote_photo_url: 'http://getwallpapers.com/wallpaper/full/b/6/a/500920.jpg')
item11 = Item.create(address: "Valencia", price: 190, description: "This monster her ghastly tendency to feast on human blood and flesh, more than warrants her place as number seven on our list... Skills: Explosive Arrow, Ice Shot", name: "Sphinx", user: sy, remote_photo_url: 'https://gallery.mailchimp.com/e0f5618a41f76b17c22005aec/images/cy.gif')
item12 = Item.create(address: "Istanbul", price: 188, description: "This monster is so feaurious and has the ability to grow stronger with time, age, and the consumption of human blood... Skills: Immortality, golden horn, super punch", name: "Cycsphira", user: sy, remote_photo_url: 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80')

puts "Creating Bookings"
startTime = Time.now
endTime = Time.now + (rand 2..7 * secondsInADay)
booking1 = Booking.create(status: "Pending", item: item1, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item1.price)
booking2 = Booking.create(status: "Accepted", item: item2, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item2.price)
booking3 = Booking.create(status: "Rejected", item: item3, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item3.price)

# puts "Creating Amenities"
# amenity1 = Amenity.create(description: "Scary")
# amenity2 = Amenity.create(description: "Cookies")
# amenity3 = Amenity.create(description: "Flying")

# puts "Creating Item Ammenities Join Relations"

# 3.times do
#   ItemAmenity.create(item: item1, amenity: amenity1)
# end

# 3.times do
#   ItemAmenity.create(item: item2, amenity: amenity2)
# end

# 3.times do
#   ItemAmenity.create(item: item3, amenity: amenity3)
# end

puts "Seeding Process Complete"
puts "Have fun with your monsters!"

