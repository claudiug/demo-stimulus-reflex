# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
data = []
5000.times do
  data << {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    age: rand(18..100),
    company: Faker::Company.name,
    active: [true, false].sample,
    created_at: Time.current,
    updated_at: Time.current
  }
end
Contact.insert_all(data)
