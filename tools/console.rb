require_relative '../config/environment.rb'

artist1 = Artist.new("squidward", 2)
artist2 = Artist.new("spongebob", 1)
artist3 = Artist.new("squidllian", 5)


gallery1 = Gallery.new('Gallery1', "NYC")
gallery2 = Gallery.new('Gallery2', "Chicago")
gallery3 = Gallery.new('Gallery3', "Boston")
gallery4 = Gallery.new('Gallery4', "Seatle")
gallery5 = Gallery.new('Gallery5', "Los Angeles")
gallery6 = Gallery.new('Gallery6', "Dubai")


painting1 = Painting.new('paint1', 50, artist2, gallery2)
painting2 = Painting.new('paint2', 100, artist3, gallery1)
painting3 = Painting.new('paint3', 20, artist2, gallery5)
painting4 = Painting.new('paint4', 60, artist1, gallery4)
painting5 = Painting.new('paint5', 70, artist1, gallery3)
painting5 = Painting.new('paint5', 300, artist1, gallery3)


# Expecting Painting.total_prize => 300
# Expecting artist1.paintings  => [<painting4>, <painting5>]
# Expecting artist2.galleries  => [<Chicago>, <Los Angeles>]
# Expecting artist1.cities  => ["NYC", "Boston"]
# Expecting Artist.total_experience  => 8
# Expecting Artist.most_prolific  => <artist3>
# Expecting artist3.create_painting("awesome_painting", 200, gallery6)  => <painting in Dubai>
# Expecting Gallery.all  => [<gallery1>, <gallery2> ...]
# Expecting gallery2.paintings  => [<painting1> ...]
# Expecting gallery2.artista  => [<artist> ...]


Painting.total_price

binding.pry

puts "Bob Ross rules."
