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
Booking.destroy_all
Item.destroy_all
User.destroy_all

puts "Creating New User Seeds"

chad = User.create(email: "chad@gmgemail.com", password: "password")
kaveh = User.create(email: "kaveh@gmail.com", password: "password")
nico = User.create(email: "nico@gmail.com", password: "password")
puts "Creating the only landlord, the late great Sy Rashid"
sy = User.create(email: "sy@gmail.com", password: "holla123")


puts "Creating Items"
item1 = Item.create(address:Faker::Address.street_address, capacity:rand(10), price: 69.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, lat: Faker::Address.latitude, lng: Faker::Address.longitude, user: sy)
item2 = Item.create(address:Faker::Address.street_address, capacity:rand(10), price: 20.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, lat: Faker::Address.latitude, lng: Faker::Address.longitude, user: sy)
item3 = Item.create(address:Faker::Address.street_address, capacity:rand(10), price: 100.69, description: Faker::TvShows::MichaelScott.quote, name: Faker::Name.name, lat: Faker::Address.latitude, lng: Faker::Address.longitude, user: sy)

puts "Creating Bookings"
startTime = Time.now
endTime = Time.now + (rand 2..7 * secondsInADay)
booking1 = Booking.create(item: item1, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item1.price)
booking2 = Booking.create(item: item2, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item2.price)
booking3 = Booking.create(item: item3, user: sy, start_date: startTime, end_date: endTime, status: true, total_price: ((endTime - startTime)/secondsInADay) * item3.price)

puts "Creating Amenities"
amenity1 = Amenity.create(description: "fakeAmenity")
amenity2 = Amenity.create(description: "fakeAmenity")
amenity3 = Amenity.create(description: "fakeAmenity")

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

puts "Adding Photo URL"
photo1 = Photo.create(data: "https://images.unsplash.com/photo-1542683549-cf229d5ea6f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", item: item1)
photo2 = Photo.create(data: "https://images.unsplash.com/photo-1544098281-073ae35c98b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80", item: item2)
photo3 = Photo.create(data: "https://images.unsplash.com/photo-1494949360228-4e9bde560065?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80", item: item3)

puts "Seeding Process Complete"
puts "Have fun with your pet rocks!"

