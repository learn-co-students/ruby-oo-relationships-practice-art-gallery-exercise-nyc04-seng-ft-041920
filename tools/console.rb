require_relative '../config/environment.rb'


# to test my code

ar1 = Artist.new("Senada", 23)
ar2 = Artist.new("Mimi", 18)
ar3 = Artist.new("Bee", 1)

g1 = Gallery.new("Guggenheim", "NYC")
g2 = Gallery.new("The Met", "Chicago")

#def initialize(title, price, artist, gallery)
p1 = Painting.new("La Bonita", 1000000, ar1, g1)
p2 = Painting.new("Lalala", 10, ar2, g1)
p3 = Painting.new("PolandSpring", 233548694939, ar3, g2)
p4 = Painting.new("Bob Ross Portrait", 500, ar1, g2)


binding.pry

puts "Bob Ross rules."
