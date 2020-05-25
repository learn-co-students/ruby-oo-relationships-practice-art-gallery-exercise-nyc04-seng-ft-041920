require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

# Artists: name, years_experience
a1 = Artist.new("Henrik DeGualle", 5)
a2 = Artist.new("Marcus Fisher", 8)
a3 = Artist.new("Arielle Schaff", 9)
a4 = Artist.new("Kara Newsom", 6)
a5 = Artist.new("Annika Janeway", 7)
a6 = Artist.new("William Roberts", 6)

#Galleries
g1 = Gallery.new("The Compound", "NYC")
g2 = Gallery.new("Lehman Art Gallery", "NYC")
g3 = Gallery.new("Intuit", "Chicago")
g4 = Gallery.new("Gallery 1448", "Baltimore")
g5 = Gallery.new("Y Art", "Baltimore")

#Paintings:
p1 = Painting.new("Encounter at Farpoint", a3, g1, 425)
p2 = Painting.new("The Caretaker", a4, g1, 875)
p3 = Painting.new("An Inverted Sky", a3, g3, 1925)
p4 = Painting.new("The Polemic Epic", a3, g4, 1585)
p5 = Painting.new("The Inner Light", a1, g5, 1050)
p6 = Painting.new("The Musician's Flute", a6, g5, 2270)
p7 = Painting.new("Orion's Belt", a6, g5, 359)
p8 = Painting.new("Arnold's Grief", a4, g5, 750)
p9 = Painting.new("Officer Murphy", a2, g2, 1349)
p10 = Painting.new("Glorious Resolution", a1, g5, 3549 )
p11 = Painting.new("Fall of the House of Fontaine", a4, g3, 4250)
p12 = Painting.new("Gateway at Night", a5, g2, 2895)
p14 = Painting.new("Resplendent Partygoer", a5, g3, 2468)
p15 = Painting.new("Message in a Bottle", a5, g1, 1875)

binding.pry