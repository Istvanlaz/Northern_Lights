# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Passenger.destroy_all
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



puts 'Creating awesome passengers...'


passenger_1 = Passenger.create!({
  first_name: "Bob",
  family_name: "Mbappe",
  places: 1,
  contact: "0476 72 73 74",
  lift_id: lift_1.id
})

passenger_2 = Passenger.create!({
  first_name: "Bobette",
  family_name: "Neymar",
  places: 1,
  contact: "henry.dp@gmail.com",
  lift_id: lift_1.id
})

passenger_3 = Passenger.create!({
  first_name: "Richard",
  family_name: "Pauletta",
  places: 2,
  contact: "0477 83 73 02",
  lift_id: lift_2.id
})

passenger_4 = Passenger.create!({
  first_name: "Georges",
  family_name: "Di Maria",
  places: 1,
  contact: "0467 73 92 01",
  lift_id: lift_3.id
})

passenger_5 = Passenger.create!({
  first_name: "Paolo",
  family_name: "Kimpembe",
  places: 1,
  contact: "0467 73 92 01",
  lift_id: lift_1.id
})

passenger_6 = Passenger.create!({
  first_name: "Edinson",
  family_name: "Cavani",
  places: 1,
  contact: "0467 73 92 01",
  lift_id: lift_2.id
})

passenger_7 = Passenger.create!({
  first_name: "Julien",
  family_name: "Pastore",
  places: 1,
  contact: "0467 73 92 01",
  lift_id: lift_3.id
})

passenger_8 = Passenger.create!({
  first_name: "Alice",
  family_name: "Javier",
  places: 1,
  contact: "0467 73 92 01",
  lift_id: lift_3.id
})

passenger_9 = Passenger.create!({
  first_name: "Arthur",
  family_name: "Ravioli",
  places: 1,
  contact: "0467 73 92 01",
  lift_id: lift_4.id
})

p "Created #{Passenger.count} passengers"

p "Now, we can say for instance that #{lift_1.first_name} (our 1st Lift!) will have #{lift_1.passengers.count} passengers!"

p "That #{lift_2.first_name} (our 2nd Lift!) will have #{lift_2.passengers.count} passengers!"

p "That #{lift_3.first_name} (our 3rd Lift!) will have #{lift_3.passengers.count} passengers!"

p "And that #{lift_4.first_name} (our last seeded Lift so far!) will have #{lift_4.passengers.count} passengers!"




