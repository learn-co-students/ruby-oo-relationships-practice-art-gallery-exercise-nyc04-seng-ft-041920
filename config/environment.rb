require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


# Artist
davinci = Artist.new("Leonardo DaVinci", 30)
michelangelo = Artist.new("Michelangelo di Lodovico Buonarroti Simoni", 30)
vangogh = Artist.new("Vincent Willem van Gogh", 50)

# Gallery 
france = Gallery.new("Louvre", "France")
germany = Gallery.new("Scopophilia", "Germany")
london = Gallery.new("Yale Center for British Art", "London")
states = Gallery.new("M.o.M.A.", "U.S.A.")
states_2 = Gallery.new("A.M.N.H.", "U.S.A.")

# Painting
## Da Vinci
mona_lisa = Painting.new("Mona Lisa", 2000, davinci, states_2)
last_supper = Painting.new("The Last Supper", 1800, davinci, london)
vitruvian_man = Painting.new("Vitruvian Man", 2500, davinci, germany)
## Michelangelo
david = Painting.new("David", 4000, michelangelo, states)
sistine_chapel = Painting.new("Sistine Chapel Cieling", 10000, michelangelo, states_2)
creation_of_adam = Painting.new("The Creation of Adam", 7000, michelangelo, france)
bacchus = Painting.new("Bacchus", 700, michelangelo, germany)
## Van Gogh
starry_night = Painting.new("Starry Night", 6500, vangogh, states)
potato_eaters = Painting.new("The Potato Eaters", 800, vangogh, france)

binding.pry