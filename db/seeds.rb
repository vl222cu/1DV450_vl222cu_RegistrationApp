# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
user1 = User.create(email: 'vivsan@testar.se', password: 'lammet', password_confirmation: 'lammet')
user2 = User.create(email: 'vivi@testar.com', password: 'hejhej', password_confirmation: 'hejhej')

ApiKey.delete_all
key1 = ApiKey.new
key2 = ApiKey.new

user1.api_key = key1
user2.api_key = key2