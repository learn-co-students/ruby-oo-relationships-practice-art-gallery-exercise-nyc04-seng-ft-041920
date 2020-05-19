require_relative "../config/environment.rb"

rei = Artist.new("Rei", 5)
cristian = Artist.new("Cristian", 15)

javits = Gallery.new("Javis Center", "New York")
staples = Gallery.new("Staples Center", "New York")

Painting.new("Master piece", rei, staples, 500.50)
Painting.new("Summer", cristian, staples, 800)
Painting.new("Master winter", rei, javits, 200)
Painting.new("Master winter", rei, javits, 1000)

# a = cristian.create_painting("ABC", staples, 100)
# Painting.new(title, self, gallery, price)

binding.pry

# puts "Bob Ross rules."
