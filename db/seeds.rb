# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

users = User.create([
    {email: "danieliseverywhere@gmail.com", password: "Password", first_name: "Jim", last_name: "James", username: "Jimmyjames", performer: true},
    {email: "FluidLee@gmail.com", password: "Password", first_name: "Fluid", last_name: "Lee", username: "FluidLee", performer: true},
    {email: "Mattbrobro@gmail.com", password: "Password", first_name: "Matt", last_name: "Brobro", username: "squanchcat", performer: false},
    {email: "TrevorYowza@gmail.com", password: "Password", first_name: "Trevor", last_name: "Yowza", username: "Jambandfan", performer: false}
  ])

Category.destroy_all

categories = Category.create([
  {name: "Living Statue"},
  {name: "Music"},
  {name: "Dance"},
  {name: "Theater"},
  {name: "Puppeteering"},
  {name: "Acrobats"},
  {name: "Juggling"},
  {name: "Magic"},
  {name: "Other"}

  ])

  Post.destroy_all


  posts = Post.create([
    {headline: "So, so good.  Where can I find them?", content: "There was this silver statue guy with a sword and lots of muscles - he was incredicle.  I watched him for 30 minutes.  I was standing right next to him the whole time and he didn't even blink! It was amazing. Where can I find him?", category: Category.find_by(name: "Living Statue"), user: User.first, occured: "2016-07-20", performer_info: "silver, muscely, trojan looking statue guy.  It's a mystery."},
    {headline: "FluidLee - Such a good voice.", content: "Saw her by the Expo line the other day. She was great. Interesting choice of location for performance, but she had great intersection (stage) presence.", category: Category.find_by(name: "Music"), occured: "2016-07-15", performer_info: "facebook.com/fluidlee
twitter @fluidleemusic
instagram: @fluidlee
soundcloud: @fluidlee
youtube:@fluidlee
booking: info@luxionbooking.com", user: User.all.sample }

  ])
