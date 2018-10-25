# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do
  Assembly.create!(assembly_name: Faker::ElectricalComponents.active)  #=> "Transistor")
  Spare.create!(spare_number: Faker::Number.hexadecimal(3)) #=> "e74")
end


for i in (1..Assembly.all.count)
  Spare.find(rand(1..Spare.all.count)).assemblies << Assembly.find(i)
end

for i in (1..Spare.all.count)
  Assembly.find(rand(1..Assembly.all.count)).spares << Spare.find(i)
end
