# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shop.destroy_all
puts 'Database cleaned'


puts 'Creating user'

elsa = User.create!(email: 'lecollectionist@test.com', password: 'lecollectionist_test')

puts 'Creating shops'

leroy_merlin = Shop.create!(user: elsa, name: "Leroy Merlin")
maison_du_monde = Shop.create!(user: elsa, name: "Maison du monde")
emma = Shop.create!(user: elsa, name: "Emma")
swarovski = Shop.create!(user: elsa, name: "Swarovski")
bo_mie = Shop.create!(user: elsa, name: "Bo&mie")

puts 'Shops created'
