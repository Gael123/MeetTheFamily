# require 'open-uri'
# require 'faker'


# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# if Rails.env.development?
#   People.destroy_all
#   Relationship_types.destroy_all
#   Relationship.destroy_all
# end

# puts 'creating people'
# people_rel = []
# 9.times { people_rel << Faker::Relationship.familial  }
# people_rel.each do | rel|
#   @people = Person.new(first_name: first_name)
#   @people.save!
# end
