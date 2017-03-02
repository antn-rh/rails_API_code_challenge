# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contact.create(
  [
    {
      first_name: "Joshua", last_name: "Kemp", age: 28, phone_number: "(111) 111-1111", email: "joshuak@gmail.com", computer_languages: "Java", pets: "Two dogs, One cat"
    },
    {
      first_name: "Daniel", last_name: "Cartman", age: 43, phone_number: "(222) 222-2222", email: "danielc@gmail.com", computer_languages: "Ruby, JavaScript", pets: "One cat"
    },
    {
      first_name: "Sarah", last_name: "Wong", age: 21, phone_number: "(333) 333-3333", email: "sarahw@gmail.com", computer_languages: "C++", pets: "No pets"
    },
    {
      first_name: "Breanna", last_name: "Towns", age: 32, phone_number: "(444) 444-4444", email: "breannat@gmail.com", computer_languages: "C#", pets: "Two dogs"
    },
    {
      first_name: "Kevin", last_name: "Ansari", age: 36, phone_number: "(555) 555-5555", email: "kevina@gmail.com", computer_languages: "C", pets: "Three fish"
    },
    {
      first_name: "Stephen", last_name: "Baker", age: 23, phone_number: "(666) 666-6666", email: "stephenb@gmail.com", computer_languages: "C++, JavaScript, Ruby", pets: "One Turtle"
    },
    {
      first_name: "Annie", last_name: "Goldman", age: 53, phone_number: "(777) 777-7777", email: "annieg@gmail.com", computer_languages: "PHP, Java", pets: "One Parrot, One dog"
    },
    {
      first_name: "Lisa", last_name: "Meyer", age: 29, phone_number: "(888) 888-8888", email: "lisam@gmail.com", computer_languages: "Ruby, Dart", pets: "Four cats"
    },
    {
      first_name: "Benjamin", last_name: "Lee", age: 31, phone_number: "(999) 999-9999", email: "benjaminl@gmail.com", computer_languages: "Go, JavaScript, Ruby", pets: "One tarantula" 
    },
    {
      first_name: "Harry", last_name: "Lampard", age: 24, phone_number: "(000) 000-0000", email: "harryl@gmail.com", computer_languages: "Java, C++, Ruby, JavaScript, Dart", pets: "No pets"
    },
  ])
