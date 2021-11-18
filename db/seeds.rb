# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Starting to work on the seed file
require 'open-uri'

puts "Destroying Database"

Renting.destroy_all
Car.destroy_all
User.destroy_all

# Seeding Users
puts "Creating Users"

finn = User.new
finn.email = "finn@lewagon.org"
finn.password = "123456"
finn.first_name = "Finn"
finn.last_name = "Erdmann"
finn.username = "finnerdmann"
finn.age = 18
finn.location = "Duesseldorf"
finn_picture = URI.open('https://kitt.lewagon.com/placeholder/users/jfcerdmann')
finn.photo.attach(io: finn_picture, filename: 'nes.png', content_type: 'image/png')
finn.save!

luis = User.new
luis.email = "luis@lewagon.org"
luis.password = "123456"
luis.first_name = "Luis"
luis.last_name = "Kohl"
luis.username = "luiskohl"
luis.age = 18
luis.location = "Duesseldorf"
luis_picture = URI.open('https://kitt.lewagon.com/placeholder/users/code7756221432')
luis.photo.attach(io: luis_picture, filename: 'nes.png', content_type: 'image/png')
luis.save!

sebastian = User.new
sebastian.email = "sebastian@lewagon.org"
sebastian.password = "123456"
sebastian.first_name = "Sebastian"
sebastian.last_name = "Burkhardt"
sebastian.username = "sebastianburkhardt"
sebastian.age = 27
sebastian.location = "Munich"
sebastian_picture = URI.open('https://kitt.lewagon.com/placeholder/users/schabasti')
sebastian.photo.attach(io: sebastian_picture, filename: 'nes.png', content_type: 'image/png')
sebastian.save!

marcus = User.new
marcus.email = "marcus@lewagon.org"
marcus.password = "123456"
marcus.first_name = "Marcus"
marcus.last_name = "Wrede"
marcus.username = "marcuswrede"
marcus.age = 24
marcus.location = "Muenster"
marcus_picture = URI.open('https://kitt.lewagon.com/placeholder/users/wredemarcus')
marcus.photo.attach(io: marcus_picture, filename: 'nes.png', content_type: 'image/png')
marcus.save!

# Seeding cars
puts "Creating Cars"

audi_a4 = Car.new
audi_a4.brand = "Audi"
audi_a4.model = "A4"
audi_a4.seats = 5
audi_a4.description = "Barely used car free to be rented out to experienced drivers"
audi_a4.user = sebastian
a_4_picture = URI.open('https://i.auto-bild.de/mdb/large/77/a4-f8a.png')
audi_a4.photo.attach(io: a_4_picture, filename: 'nes.png', content_type: 'image/png')
audi_a4.save!

bmw_5 = Car.new
bmw_5.brand = "BMW"
bmw_5.model = "M5"
bmw_5.seats = 5
bmw_5.description = "I bought the BMW last year to enjoy the German Autobahn. Sportious car for adventurous drivers"
bmw_5.user = finn
m5_picture = URI.open('https://img.nzz.ch/2019/7/29/9edfd429-7bff-49f6-9538-57814252c57c.jpeg?width=750&height=421&fit=crop&quality=75&auto=webp')
bmw_5.photo.attach(io: m5_picture, filename: 'nes.png', content_type: 'image/png')
bmw_5.save!

mercedes_s = Car.new
mercedes_s.brand = "Mercedes"
mercedes_s.model = "S-Class"
mercedes_s.seats = 5
mercedes_s.description = "Luxurious limo with driver to bring you to your next big event"
mercedes_s.user = luis
mercedes_s_picture = URI.open('https://imgr1.auto-motor-und-sport.de/Mercedes-S-Klasse-W223-bigMobileWide-15a7a86f-1736414.jpg')
mercedes_s.photo.attach(io: mercedes_s_picture, filename: 'nes.png', content_type: 'image/png')
mercedes_s.save!

audi_rs6 = Car.new
audi_rs6.brand = "Audi"
audi_rs6.model = "RS6"
audi_rs6.seats = 5
audi_rs6.description = "Wolf in sheeps clothing. Be faster than a Porsche in a family car"
audi_rs6.user = marcus
audi_rs6_picture = URI.open('https://cdn.motor1.com/images/mgl/n7O6x/s1/audi-rs-6-avant-2019.jpg')
audi_rs6.photo.attach(io: audi_rs6_picture, filename: 'nes.png', content_type: 'image/png')
audi_rs6.save!

vw_bulli = Car.new
vw_bulli.brand = "Volkswagen"
vw_bulli.model = "T6"
vw_bulli.seats = 9
vw_bulli.description = "Classic VW Bulli for a group of friends or family"
vw_bulli.user = marcus
vw_bulli_picture = URI.open('https://i.auto-bild.de/mdb/extra_large/18/t6-03d.png')
vw_bulli.photo.attach(io: vw_bulli_picture, filename: 'nes.png', content_type: 'image/png')
vw_bulli.save!

mercedes_gt = Car.new
mercedes_gt.brand = "Mercedes-AMG"
mercedes_gt.model = "GT"
mercedes_gt.seats = 2
mercedes_gt.description = "Brand new model with 730HP. Driving performance for sports car enthusiasts."
mercedes_gt.user = sebastian
mercedes_gt_picture = URI.open('https://imgr1.auto-motor-und-sport.de/Mercedes-AMG-GT-Exterieur-bigMobileWide-516f98c-1787047.jpg')
mercedes_gt.photo.attach(io: mercedes_gt_picture, filename: 'nes.png', content_type: 'image/png')
mercedes_gt.save!

# Seed rentings
puts "Creating a few rentings"

renting_1 = Renting.new
renting_1.date = "10.10.2021"
renting_1.car = audi_a4
renting_1.user = finn
renting_1.save!

renting_2 = Renting.new
renting_2.date = "15.10.2021"
renting_2.car = bmw_5
renting_2.user = marcus
renting_2.save!

renting_3 = Renting.new
renting_3.date = "05.11.1997"
renting_3.car = mercedes_gt
renting_3.user = marcus
renting_3.save!

renting_4 = Renting.new
renting_4.date = "09.11.2021"
renting_4.car = mercedes_s
renting_4.user = sebastian
renting_4.save!

renting_5 = Renting.new
renting_5.date = "10.10.2021"
renting_5.car = vw_bulli
renting_5.user = luis
renting_5.save!

puts "Finished all seeding"
