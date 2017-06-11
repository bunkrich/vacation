require 'faker'


trip1 = Trip.create(name: "Party Weekend", location: "New York", description: "WOOOOO!", start_date: 10.days.ago, end_date: 5.days.ago )


user1 = User.create(email: "brent@gmail.com")
user2 = User.create(email: "me@gmail.com" )
  user1.trips = [trip1]
  user2.trips = [trip1]

  commentA = trip1.comments.create(user: user1, body: "love New York")
  commentB = trip1.comments.create(user: user2, body: "i HATE New York")
  commentC = trip1.comments.create(user: user2, body: "JK, I love it.")

item1 = user1.items.create(category: "Night Life", lookup: "A123bx34", body: "Rooftop Bar", trip: trip1, date: 10.days.ago.at_midday)
  item1.votes.create(user: user1, up_down: 1)
  item1.votes.create(user: user2, up_down: 1)
  comment1 = item1.comments.create(user: user1, body: "love to party")
  comment2 = item1.comments.create(user: user2, body: "i HATE to party")
  comment3 = item1.comments.create(user: user2, body: "JK, I love it.")

item2 = user1.items.create(category: "Flight", lookup: "AA123", body: "Flight to NYC", trip: trip1, date: 10.days.ago.at_midday)
lodge = user1.items.create(category: "Lodge", lookup: "Xe82e3", body: "Hotel in Chelsea", trip: trip1)
  item2.votes.create(user: user1, up_down: -1)
  item2.votes.create(user: user2, up_down: -1)
  comment4 = item2.comments.create(user: user1, body: "Cool Flight")
  comment5 = item2.comments.create(user: user2, body: "I'm on that flight too")
  comment6 = item2.comments.create(user: user2, body: "JK, I live here.")

5.times do
  trip = Trip.create(name: Faker::Hipster.sentence, location: Faker::Friends.location, description: Faker::Friends.quote, start_date: Date.parse('17/9/2015'), end_date: Date.parse('20/9/2015'))
  5.times do
    user = trip.users.create(email: Faker::Internet.email, image: Faker::Avatar.image)

    item_night = user.items.create(title: "Brass Monkey", category: "Night Life", lookup: "ChIJKTdxRMBZwokRX1rAQPLPzlE", address: "55 Little West 12th St, New York, NY 10014", body: "SHOTS!", trip: trip, date: DateTime.new(2017, 6, 22), image: "http://www.therooftopguide.com/rooftop-bars-in-new-york/Bilder/TheBrassMonkey_2_slide.jpg")

    user.items.create(title: "Tao Downtown", category: "Restaurant", address: "92 9th Ave, New York, NY 10011", lookup: "ChIJKaKVI79ZwokRN8WicODOIAw", body: "Birthday Dinner!", image: "http://cdn.clubzone.com/content/uploads/places/3541247/3-650x430.jpg", trip: trip, date: DateTime.new(2017, 6, 22))

    user.items.create(title: "World Trade Center", category: "Attractions", lookup: "ChIJ-4MbiBlawokR5ixJ4E8Km5c", body: "Visting the top of the WTC", trip: trip, image: "https://cdn.vox-cdn.com/uploads/chorus_asset/file/4802093/1wtc-wtcprogress.0.jpg", date: DateTime.new(2017, 6, 22))

    trip.comments.create(body: Faker::Hipster.sentence, user: user)
  end
end
