# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Lift.destroy_all

puts 'Creating awesome lifts...'


lift_1 = Lift.create!({
  first_name: "Emmanuel",
  family_name: "Pirlot de Corbion",
  places_available: 4,
  contact: "0476 72 73 74",
  rallying_point: "Rond Point de Montgommery",
  departure: Time.strptime('11/22/2020 20:15', '%m/%d/%Y %H:%M'),
  return: Time.strptime('11/22/2020 00:45', '%m/%d/%Y %H:%M')
})

lift_2 = Lift.create!({
  first_name: "Henry",
  family_name: "de Planta",
  places_available: 3,
  contact: "henry.dp@gmail.com",
  rallying_point: "ULB",
  departure: Time.strptime('11/22/2020 20:15', '%m/%d/%Y %H:%M')
})

lift_3 = Lift.create!({
  first_name: "Jacques",
  family_name: "Bonsergent",
  places_available: 2,
  contact: "0477 83 73 02",
  rallying_point: "Métro Louise",
  departure: Time.strptime('11/22/2020 20:00', '%m/%d/%Y %H:%M')
})

lift_4 = Lift.create!({
  first_name: "Henri",
  family_name: "Bolloré",
  places_available: 4,
  contact: "0467 73 92 01",
  rallying_point: "Rond Point Mezeire",
  departure: Time.strptime('11/22/2020 20:30', '%m/%d/%Y %H:%M'),
  return: Time.strptime('11/22/2020 01:45', '%m/%d/%Y %H:%M')
})

p "Created #{Lift.count} lifts"




