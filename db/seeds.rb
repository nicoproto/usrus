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
item1 = Item.create(address:Faker::Address.street_address, price: 69.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, user: sy, remote_photo_url: 'https://i.pinimg.com/originals/3a/73/40/3a734077ce6636193d7f924f15004366.jpg')
item2 = Item.create(address:Faker::Address.street_address, price: 20.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, user: sy, remote_photo_url: 'http://jesusgilhernandez.com/wp-content/uploads/2014/03/cookie-monster.jpg')
item3 = Item.create(address:Faker::Address.street_address, price: 100.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, user: sy, remote_photo_url: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/72e3a9d7-8d5e-4cd7-b2c6-134f9b12addc/d6eq0mr-cb0e24e3-939b-4268-9f0a-848d1b2d87f4.png/v1/fill/w_894,h_894,strp/dragonite_flying_vector_by_konylice_d6eq0mr-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTAwMCIsInBhdGgiOiJcL2ZcLzcyZTNhOWQ3LThkNWUtNGNkNy1iMmM2LTEzNGY5YjEyYWRkY1wvZDZlcTBtci1jYjBlMjRlMy05MzliLTQyNjgtOWYwYS04NDhkMWIyZDg3ZjQucG5nIiwid2lkdGgiOiI8PTUwMDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.a55eeWKsSfQoZeST4pZQyYXPnpTp8DHsMabsttFcUBk')

puts "Creating Bookings"
startTime = Time.now
endTime = Time.now + (rand 2..7 * secondsInADay)
booking1 = Booking.create(item: item1, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item1.price)
booking2 = Booking.create(item: item2, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item2.price)
booking3 = Booking.create(item: item3, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item3.price)

puts "Creating Amenities"
amenity1 = Amenity.create(description: "Scary")
amenity2 = Amenity.create(description: "Cookies")
amenity3 = Amenity.create(description: "Flying")

puts "Creating Item Ammenities Join Relations"

3.times do
  ItemAmenity.create(item: item1, amenity: amenity1)
end

3.times do
  ItemAmenity.create(item: item2, amenity: amenity2)
end

3.times do
  ItemAmenity.create(item: item3, amenity: amenity3)
end

puts "Seeding Process Complete"
puts "Have fun with your monsters!"

