require_relative '../config/environment.rb'


a1 = Artist.new("Monet", 45)
a2 = Artist.new("Michelangelo", 28)
a3 = Artist.new("Bob Ross", 50)
a4 = Artist.new("Elisheva", 1)


g1 = Gallery.new("MOMA", "NYC")
g2 = Gallery.new("Tel Aviv Art Gallery", "Tel Aviv")
g3 = Gallery.new("Elisheva's Gallery", "Highland Park")

p1 = Painting.new("Water Lilies", 9999, a1, g3)
p2 = Painting.new("Pretty Mountains", 500, a3, g1)
p3 = Painting.new("Sistene Chapel", 12345, a2, g2)
p4 = Painting.new("Lake and Trees", 475, a3, g2)
p5 = Painting.new("Ocean", 625, a3, g1)
# p6 = Painting.new("My painting", 100, a4, g1)
# p7 = Painting.new("Black dot on white canvas", 100000, a4, g1)








binding.pry

puts "Bob Ross rules."
