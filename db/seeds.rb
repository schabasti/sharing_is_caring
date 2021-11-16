# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Starting to work on the seed file
puts "Destroying Database"

Renting.destroy_all
Car.destroy_all
User.destroy_all

# Seeding Users
puts "Creating Users"

finn = User.new
finn.email = "finn@lewagon.org"
finn.password = "123456"
finn.username = "finnerdmann"
finn.age = 18
finn.location = "Duesseldorf"
finn.save!

louis = User.new
louis.email = "louis@lewagon.org"
louis.password = "123456"
louis.username = "louiskohl"
louis.age = 18
louis.location = "Duesseldorf"
louis.save!

sebastian = User.new
sebastian.email = "sebastian@lewagon.org"
sebastian.password = "123456"
sebastian.username = "sebastianburkhardt"
sebastian.age = 27
sebastian.location = "Munich"
sebastian.save!

marcus = User.new
marcus.email = "marcus@lewagon.org"
marcus.password = "123456"
marcus.username = "marcuswrede"
marcus.age = 24
marcus.location = "Muenster"
marcus.save!

# Seeding cars
puts "Creating Cars"

audi_a4 = Car.new
audi_a4.brand = "Audi"
audi_a4.model = "A4"
audi_a4.seats = 5
audi_a4.description = "Barely used car free to be rented out to experienced drivers"
audi_a4.user = sebastian
audi_a4.save!

bmw_5 = Car.new
bmw_5.brand = "BMW"
bmw_5.model = "M5"
bmw_5.seats = 5
bmw_5.description = "I bought the BMW last year to enjoy the German Autobahn. Sportious car for adventurous drivers"
bmw_5.user = finn
bmw_5.save!

mercedes_s = Car.new
mercedes_s.brand = "Mercedes"
mercedes_s.model = "S-Class"
mercedes_s.seats = 5
mercedes_s.description = "Luxurious limo with driver to bring you to your next big event"
mercedes_s.user = louis
mercedes_s.save!

audi_rs6 = Car.new
audi_rs6.brand = "Audi"
audi_rs6.model = "RS6"
audi_rs6.seats = 5
audi_rs6.description = "Wolf in sheeps clothing. Be faster than a Porsche in a family car"
audi_rs6.user = marcus
audi_rs6.save!

vw_bulli = Car.new
vw_bulli.brand = "Volkswagen"
vw_bulli.model = "T6"
vw_bulli.seats = 9
vw_bulli.description = "Classic VW Bulli for a group of friends or family"
vw_bulli.user = marcus
vw_bulli.save!

mercedes_gt = Car.new
mercedes_gt.brand = "Mercedes-AMG"
mercedes_gt.model = "GT"
mercedes_gt.seats = 2
mercedes_gt.description = "Brand new model with 730HP. Driving performance for sports car enthusiasts."
mercedes_gt.user = sebastian
mercedes_gt.save!

puts "Finished all seeding"
