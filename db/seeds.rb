# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@ash = Trainer.find_or_create_by!(name: "Ash Ketchum", age: 10, certified: false)
@blue = Trainer.find_or_create_by!(name: "Blue", age: 11, certified: false)
@red = Trainer.find_or_create_by!(name: "Red", age: 12, certified: false)
