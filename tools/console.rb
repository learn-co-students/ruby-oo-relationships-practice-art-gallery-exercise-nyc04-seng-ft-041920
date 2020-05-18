require_relative '../config/environment.rb'

#name, years_experience
bashir = Artist.new("Bashir", 20)
rei = Artist.new("Rei", 25)
michelle = Artist.new("Michelle", 30)

#name, city
g1 = Gallery.new("G1 Yo", "NYC")
g2 = Gallery.new("G2 YoYO", "Los Angles")
g3 = Gallery.new("Win", "Unknown City")

#title, price, artist, gallery
p1 = Painting.new("The God", 1000, bashir, g1)
p2 = Painting.new("The Lord", 2000, bashir, g2)

p3 = Painting.new("The Code", 3000, rei, g1)
p4 = Painting.new("The Coderrr", 4000, rei, g2)



binding.pry

puts "Bob Ross rules."
