require 'faker'

trip1 = Trip.create(name: "Party Weekend", location: "New York", description: "WOOOOO!")

user1 = User.create(email: "brent@gmail.com")
user2 = User.create(email: "me@gmail.com" )
  user1.trips = [trip1]
  user2.trips = [trip1]

  commentA = trip1.comments.create(user: user1, body: "love New York")
  commentB = trip1.comments.create(user: user2, body: "i HATE New York")
  commentC = trip1.comments.create(user: user2, body: "JK, I love it.")
  
item1 = user1.items.create(category: "Night Life", lookup: "A123bx34", body: "Rooftop Bar", trip: trip1)
  item1.votes.create(user: user1, up_down: 1)
  item1.votes.create(user: user2, up_down: 1)
  comment1 = item1.comments.create(user: user1, body: "love to party")
  comment2 = item1.comments.create(user: user2, body: "i HATE to party")
  comment3 = item1.comments.create(user: user2, body: "JK, I love it.")

item2 = user1.items.create(category: "Flight", lookup: "AA123", body: "Flight to NYC", trip: trip1)
  item2.votes.create(user: user1, up_down: -1)
  item2.votes.create(user: user2, up_down: -1)
  comment4 = item2.comments.create(user: user1, body: "Cool Flight")
  comment5 = item2.comments.create(user: user2, body: "I'm on that flight too")
  comment6 = item2.comments.create(user: user2, body: "JK, I live here.")
  # comment7 = user1.comments.create(commentable_id: 1, commentable_type: "Trip" body: "I'm not going.")


5.times do
  trip = Trip.create(name: Faker::Hipster.sentence, location: Faker::Friends.location, description: Faker::Friends.quote)
  5.times do
    user = trip.users.create(email: Faker::Internet.email, image: Faker::Avatar.image)
    5.times do
      item_night = user.items.create(category: "Night Life", lookup: "A123bx34", body: Faker::Company.name, trip: trip)
      user.items.create(category: "Restaurant", lookup: "B123bx34", body: Faker::Company.name, trip: trip)
      user.items.create(category: "Place of Interest", lookup: "C123bx34", body: Faker::Company.name, trip: trip)
      trip.comments.create(body: Faker::Hipster.sentence, user: user)
      # 5.times do
      #   item_night.comments.create(body: Faker::Hipster.sentence, user: user)
      #   item_night.votes.create(user: user, up_down: 1)
      # end
    end
  end
end
