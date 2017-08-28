# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |n|
  Faker::Config.locale = :ja
  email = Faker::Internet.email
  name = Faker::Name.name
  address = Faker::Address
  introduction = Faker::Lorem.sentence
  password = "password"
  @user = User.create!(email: email,
               name: name,
               address: address,
               password: password,
               password_confirmation: password,
               introduction: introduction,
               uid:n+20,
               )
 Topic.create(
   name:'テスト投稿',
   contents:'ああああ',
   user_id:@user.id
   )
end
