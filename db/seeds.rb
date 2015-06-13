# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do

  user = User.create(name: Faker::Internet.user_name,
                     email: Faker::Internet.safe_email,
           password_digest: Faker::Internet.password)

  board = Board.create(category: Faker::Lorem.word)

  link = Link.create(title: Faker::Lorem.sentence,
                      body: Faker::Lorem.paragraph,
                   user_id: user.id,
                  board_id: board.id)

  comment = Comment.create(body: Faker::Lorem.sentence,
                        user_id: user.id,
                        link_id: link.id)

  vote = Vote.create(number: Faker::Number.number(2),
                     upvote: Faker::Number.digit,
                   downvote: Faker::Number.digit)

end
