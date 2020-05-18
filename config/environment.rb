require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

# Artist -< Painting >- Gallery

a1 = Artist.new("Hannah", 2)
a2 = Artist.new("John", 12)
a3 = Artist.new("Tommy", 4)

g1 = Gallery.new("Best Gallery", "Chicago")
g2 = Gallery.new("Even Better Gallery", "New York")

p1 = Painting.new("one", 543, g1, a1)
p2 = Painting.new("two", 2754, g2, a2)
p3 = Painting.new("three", 829, g1, a3)

binding.pry