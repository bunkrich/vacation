require 'faker'


trip1 = Trip.create(name: "Party Weekend", location: "New York", description: "WOOOOO!", start_date: 10.days.ago, end_date: 5.days.ago )

trip2 = Trip.create(name: "Party Weekend", location: "New York", description: "WOOOOO!", start_date: 5.days.ago, end_date: 2.days.ago )


user1 = User.create(email: "brent@gmail.com", image: "http://www.cartoonlogodesigns.com/images/misc/Smiley%20faces/smiley%20face%20logo.jpg")
user2 = User.create(email: "me@gmail.com", image: "https://image.shutterstock.com/z/stock-photo-crazy-cartoon-smiley-face-96786736.jpg" )
  user1.trips = [trip1]
  user2.trips = [trip1]

  commentA = trip1.comments.create(user: user1, body: "love New York")
  commentB = trip1.comments.create(user: user2, body: "i HATE New York")
  commentC = trip1.comments.create(user: user2, body: "JK, I love it.")

item1 = user1.items.create(category: "Night Life", lookup: "A123bx34", title: "Rooftop Bar", body: "Definitely want to check out this bar -- just look at that view! We can't not go, ya feel?", address: "123 New York Way, New York, New York 12345", image: "http://www.fodors.com/ee/files/slideshows/4-monarch-rooftop-lounge.jpg", trip: trip1, date: 10.days.ago.at_midday)

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
  trip = Trip.create(name: Faker::Hipster.sentence, location: Faker::Friends.location, description: Faker::Friends.quote, start_date: Date.parse('20/6/2017'), end_date: Date.parse('28/6/2017'))
  5.times do
    user = trip.users.create(email: Faker::Internet.email, image: Faker::Avatar.image)

    item_night = user.items.create(title: "Brass Monkey", category: "Night Life", lookup: "ChIJKTdxRMBZwokRX1rAQPLPzlE", address: "55 Little West 12th St, New York, NY 10014", body: "SHOTS!", trip: trip, date: DateTime.new(2017, 6, 22), image: "http://www.therooftopguide.com/rooftop-bars-in-new-york/Bilder/TheBrassMonkey_2_slide.jpg")

    user.items.create(title: "Tao Downtown", category: "Restaurant", address: "92 9th Ave, New York, NY 10011", lookup: "ChIJKaKVI79ZwokRN8WicODOIAw", body: "Birthday Dinner!", image: "http://cdn.clubzone.com/content/uploads/places/3541247/3-650x430.jpg", trip: trip, date: DateTime.new(2017, 6, 22))

    user.items.create(title: "World Trade Center", category: "Attractions", lookup: "ChIJ-4MbiBlawokR5ixJ4E8Km5c", body: "Visting the top of the WTC", trip: trip, image: "https://cdn.vox-cdn.com/uploads/chorus_asset/file/4802093/1wtc-wtcprogress.0.jpg", date: DateTime.new(2017, 6, 22))

    trip.comments.create(body: Faker::Hipster.sentence, user: user)
  end
end
