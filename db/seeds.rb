# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# list of fake names
names = %w(
  John
  Jane
  Mike
  Sarah
  Mary
  Mark
  Anna
  Tom
  Kate
  Alex
  Jack
)

names.each do |name|
  Teacher.create(name: name)
end