# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding the data base...'
Message.create(content: 'This is the first message')
Message.create(content: 'This is the second message')
Message.create(content: 'This is the third message')
Message.create(content: 'This message was sent twice', counter: 2)
Message.create(content: 'This message contains characters from different languages \"Привет мир\"')
Message.create(content: 'This message contains email \"postolachi.vlad@gmail.com\"')
puts 'Seeding complete!'
