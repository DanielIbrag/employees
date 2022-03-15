# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Employee.create(name: "Daniel", position: "Software Dev", experience: -1, pay: 300000)

Employee.create(name: "Trevor", position: "pharm tech", experience: 10, pay: 500000)
Employee.create(name: "Johny", position: "Cashier", experience: 4, pay: 45000)
