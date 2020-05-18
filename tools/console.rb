require_relative '../config/environment.rb'

artist1 = Artist.new("Bob", 3)
artist2 = Artist.new("Ross", 6)
artist3 = Artist.new("Bill", 5)

paint1 = Painting.new("Test Title", 100, artist1)
paint2 = Painting.new("Another Tiltle", 150, artist1)
paint3 = Painting.new("One More Title", 145, artist3)


gal1 = Gallery.new("New Gal", "NY")
gal2 = Gallery.new("Another Gal", "LA")
gal3 = Gallery.new("Last Gal", "ATL")


paint1.gallery = gal1
paint2.gallery = gal1
paint3.gallery = gal1

artist1.create_painting("new painting", 134, gal1)
artist2.create_painting("new new new", 342, gal1)
artist1.create_painting("another new", 134, gal1)
artist2.create_painting("one more", 908, gal1)
artist1.create_painting("yet again", 125, gal1)


puts "Bob Ross rules."


