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
  places_available: 6,
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
  places_available: 4,
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

puts "(un-comment lower lines in 'seeds.rb' to create more lifts)"

# lift_5 = Lift.create!({
#   first_name: "Jean-Jacques",
#   family_name: "D'Oultremont",
#   places_available: 3,
#   contact: "jeanmich@gg.cc",
#   rallying_point: "Rond Point de Lommepal",
#   departure: Time.strptime('11/22/2020 20:15', '%m/%d/%Y %H:%M'),
#   return: Time.strptime('11/22/2020 00:45', '%m/%d/%Y %H:%M')
# })

# lift_6 = Lift.create!({
#   first_name: "Thierry",
#   family_name: "Henry",
#   places_available: 3,
#   contact: "zesuperth.dp@gmail.com",
#   rallying_point: "VUB",
#   departure: Time.strptime('11/22/2020 19:15', '%m/%d/%Y %H:%M')
# })

# lift_7 = Lift.create!({
#   first_name: "Cristiano",
#   family_name: "Ronaldo",
#   places_available: 4,
#   contact: "0477 36 37 38",
#   rallying_point: "Métro Schaarbeek",
#   departure: Time.strptime('11/22/2020 20:00', '%m/%d/%Y %H:%M')
# })

# lift_8 = Lift.create!({
#   first_name: "Antoine",
#   family_name: "Griezmann",
#   places_available: 4,
#   contact: "0467 78 61 87",
#   rallying_point: "Place du Luxembourg",
#   departure: Time.strptime('11/22/2020 20:30', '%m/%d/%Y %H:%M'),
#   return: Time.strptime('11/22/2020 01:45', '%m/%d/%Y %H:%M')
# })

# lift_9 = Lift.create!({
#   first_name: "Phill",
#   family_name: "Collins",
#   places_available: 6,
#   contact: "pc@hotmail.fr",
#   rallying_point: "Rond Point de Montgommery",
#   departure: Time.strptime('11/22/2020 19:45', '%m/%d/%Y %H:%M'),
#   return: Time.strptime('11/22/2020 01:00', '%m/%d/%Y %H:%M')
# })

# lift_10 = Lift.create!({
#   first_name: "Victor",
#   family_name: "Hugo",
#   places_available: 3,
#   contact: "vc.hugo.dp@gmail.com",
#   rallying_point: "Cimetierre d'Ixelles",
#   departure: Time.strptime('11/22/2020 20:15', '%m/%d/%Y %H:%M')
# })

# lift_11 = Lift.create!({
#   first_name: "Gauthier",
#   family_name: "Wolters",
#   places_available: 4,
#   contact: "0477 83 73 02",
#   rallying_point: "Métro Vanhaff",
#   departure: Time.strptime('11/22/2020 20:00', '%m/%d/%Y %H:%M'),
#   return: Time.strptime('11/22/2020 02:00', '%m/%d/%Y %H:%M')
# })

# lift_12 = Lift.create!({
#   first_name: "Istvan",
#   family_name: "Lazar",
#   places_available: 3,
#   contact: "0467 73 92 01",
#   rallying_point: "Rond Point Mezeire",
#   departure: Time.strptime('11/22/2020 20:30', '%m/%d/%Y %H:%M'),
#   return: Time.strptime('11/22/2020 01:45', '%m/%d/%Y %H:%M')
# })

puts "Created #{Lift.count} lifts"



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
  lift_id: lift_1.id
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

puts "(un-comment lower lines in 'seeds.rb' to create more passengers)"

# passenger_10 = Passenger.create!({
#   first_name: "Bob",
#   family_name: "Mbappe",
#   places: 1,
#   contact: "0476 72 73 74",
#   lift_id: lift_8.id
# })

# passenger_11 = Passenger.create!({
#   first_name: "Bobette",
#   family_name: "Neymar",
#   places: 1,
#   contact: "henry.dp@gmail.com",
#   lift_id: lift_5.id
# })

# passenger_12 = Passenger.create!({
#   first_name: "Richard",
#   family_name: "Pauletta",
#   places: 2,
#   contact: "0477 83 73 02",
#   lift_id: lift_6.id
# })

# passenger_13 = Passenger.create!({
#   first_name: "Georges",
#   family_name: "Di Maria",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_7.id
# })

# passenger_14 = Passenger.create!({
#   first_name: "Paolo",
#   family_name: "Kimpembe",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_9.id
# })

# passenger_15 = Passenger.create!({
#   first_name: "Edinson",
#   family_name: "Cavani",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_6.id
# })

# passenger_16 = Passenger.create!({
#   first_name: "Julien",
#   family_name: "Pastore",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_5.id
# })

# passenger_17 = Passenger.create!({
#   first_name: "Alice",
#   family_name: "Javier",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_7.id
# })

# passenger_18 = Passenger.create!({
#   first_name: "Arthur",
#   family_name: "Ravioli",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_8.id
# })

# passenger_19 = Passenger.create!({
#   first_name: "Bob",
#   family_name: "Mbappe",
#   places: 1,
#   contact: "0476 72 73 74",
#   lift_id: lift_5.id
# })

# passenger_20 = Passenger.create!({
#   first_name: "Bobette",
#   family_name: "Neymar",
#   places: 1,
#   contact: "henry.dp@gmail.com",
#   lift_id: lift_9.id
# })

# passenger_21 = Passenger.create!({
#   first_name: "Richard",
#   family_name: "Pauletta",
#   places: 2,
#   contact: "0477 83 73 02",
#   lift_id: lift_10.id
# })

# passenger_22 = Passenger.create!({
#   first_name: "Georges",
#   family_name: "Di Maria",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_11.id
# })

# passenger_23 = Passenger.create!({
#   first_name: "Paolo",
#   family_name: "Kimpembe",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_9.id
# })

# passenger_24 = Passenger.create!({
#   first_name: "Edinson",
#   family_name: "Cavani",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_10.id
# })

# passenger_25 = Passenger.create!({
#   first_name: "Julien",
#   family_name: "Pastore",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_9.id
# })

# passenger_26 = Passenger.create!({
#   first_name: "Alice",
#   family_name: "Javier",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_11.id
# })

# passenger_27 = Passenger.create!({
#   first_name: "Arthur",
#   family_name: "Ravioli",
#   places: 1,
#   contact: "0467 73 92 01",
#   lift_id: lift_12.id
# })


puts "Created #{Passenger.count} passengers"




