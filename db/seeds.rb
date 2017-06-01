# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Factorial.destroy_all

Factorial.create!(number: 1, result: 1)
Factorial.create!(number: 2, result: 2)
Factorial.create!(number: 5, result: 120)
Factorial.create!(number: 10, result: 3628800)



