require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

a1 = Artist.new("Clode", 10)
a2 = Artist.new("Jean", 5)
a3 = Artist.new("Luke", 3)

g1 = Gallery.new("Pushkin Museum", "Moscow")
g2 = Gallery.new("MoMA", "New York")
g3 = Gallery.new("Russky Museum", "St.Pertsburg")

p1 = Painting.new("A", 1_000)
p2 = Painting.new("B", 2_000)
p3 = Painting.new("C", 3_000)

binding.pry 

