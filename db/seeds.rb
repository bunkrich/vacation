require 'faker'


trip1 = Trip.create(name: "Party Weekend", location: "New York", description: "WOOOOO!", start_date: 10.days.ago, end_date: 5.days.ago )

trip2 = Trip.create(name: "Party Weekend", location: "New York", description: "WOOOOO!", start_date: 5.days.ago, end_date: 2.days.ago )


user1 = User.create(email: "brent@gmail.com")
user2 = User.create(email: "me@gmail.com" )
  user1.trips = [trip1]
  user2.trips = [trip1]

  commentA = trip1.comments.create(user: user1, body: "love New York")
  commentB = trip1.comments.create(user: user2, body: "i HATE New York")
  commentC = trip1.comments.create(user: user2, body: "JK, I love it.")

item1 = user1.items.create(category: "Night Life", title: "Casino", lookup: "A123bx34", body: "Rooftop Bar", trip: trip1, date: 10.days.ago.at_midday)
  item1.votes.create(user: user1, up_down: 1)
  item1.votes.create(user: user2, up_down: 1)
  comment1 = item1.comments.create(user: user1, body: "love to party")
  comment2 = item1.comments.create(user: user2, body: "i HATE to party")
  comment3 = item1.comments.create(user: user2, body: "JK, I love it.")

item2 = user1.items.create(category: "Flight", lookup: "AA123", title: "My flight", body: "Flight to NYC", trip: trip1, date: 10.days.ago.at_midday)
lodge = user1.items.create(category: "Lodge", lookup: "Xe82e3", title: "my hotel", body: "Hotel in Chelsea", trip: trip1, date: 10.days.ago.at_midday)
  item2.votes.create(user: user1, up_down: -1)
  item2.votes.create(user: user2, up_down: -1)
  comment4 = item2.comments.create(user: user1, body: "Cool Flight")
  comment5 = item2.comments.create(user: user2, body: "I'm on that flight too")
  comment6 = item2.comments.create(user: user2, body: "JK, I live here.")


item3 = user1.items.create(category: "restaurant", title:"yummy Restaurant 1" , body: "I really love the variety", trip: trip1, date: 9.days.ago.at_midday)

item4 = user1.items.create!(category: "Restaurant", title: "Another Restaurant", body: "Food is my favorite", lookup: "34234", trip: trip1, date: 8.days.ago.at_midday)
item5 = user1.items.create!(category: "banana", title: "so much food", body: "YASSSS cookies", trip: trip1,lookup: "4324234", date: 7.days.ago.at_midday)
item6 = user1.items.create!(category: "Restaurant", title: "Woohoo foood", body: "Cookies and milk", trip: trip1, lookup: "1234", date: 6.days.ago.at_midday)

nodateitem1 = user1.items.create!(category: "Restaurant", title: "no date item", body: "yes oui", lookup: "aa", trip: trip1)
nodateitem2 = user1.items.create!(category: "Restaurant", title: "ANOTHER NO DATE item", body: "i ahve no date :()", lookup: "bbbb", trip: trip1)

5.times do
  trip = Trip.create(name: Faker::Hipster.sentence, location: Faker::Friends.location, description: Faker::Friends.quote, start_date: Date.parse('17/9/2015'), end_date: Date.parse('20/9/2015'))
  5.times do
    user = trip.users.create(email: Faker::Internet.email, image: Faker::Avatar.image)
    5.times do
      item_night = user.items.create(category: "Night Life", lookup: "A123bx34", body: Faker::Company.name, trip: trip)
      user.items.create(category: "Restaurant", lookup: "B123bx34", body: Faker::Company.name, trip: trip)
      user.items.create(category: "Place of Interest", lookup: "C123bx34", body: Faker::Company.name, trip: trip)
      trip.comments.create(body: Faker::Hipster.sentence, user: user)
    end
  end
end
