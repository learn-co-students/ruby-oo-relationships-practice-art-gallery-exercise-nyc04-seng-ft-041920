require_relative '../config/environment.rb'

smithsonian = Gallery.new("Smithsonian Institute", "Washington DC")
louvre = Gallery.new("Le Louve", "Paris FR")
metropolitan = Gallery.new("Metropolitan Museum of Art", "New York City NY")
rijk = Gallery.new("Rijksmuseum", "Amsterdam, NL")

Gallery.all

# Artists
da_vinci = Artist.new("Leonardo Da Vinci", 25)
van_gogh = Artist.new("Vincent Van Gogh", 30)
diego = Artist.new("Diego Rivera", 15)
ilya = Artist.new("Ilya Repin", 20)
bruegel = Artist.new("Pieter Bruegel the Elder", 10)

Artist.total_experience

# mona_lisa = Painting.new("Mona Lisa", 300, da_vinci, louvre)
# starry_night = Painting.new("Starry Night", 220, van_gogh, metropolitan)
# gray_sweater = Painting.new("Man in the Gray Sweater", 325, diego, smithsonian)
# cossack = Painting.new("Reply of the Zaporozhian Cossacks to Sultan Mehmed IV of the Ottoman Empire", 275, ilya, rijk)
# babel = Painting.new("The Tower of Babel", 500, bruegel, rijk)

# mona_lisa.title
# cossack.price

da_vinci.create_painting("Mona Lisa", 300, louvre)
van_gogh.create_painting("Starry Night", 220, metropolitan)
diego.create_painting("Man in the Gray Sweater", 325, smithsonian)
ilya.create_painting("Reply of the Zaporozhian Cossacks to Sultan Mehmed IV of the Ottoman Empire", 275, rijk)
bruegel.create_painting("The Tower of Babel", 500, rijk)
ilya.create_painting("Ivan the Terrible and his Son", 750, rijk)


Painting.total_price
Painting.all

ilya.paintings
ilya.galleries # why nil??????
ilya.cities

rijk.paintings
rijk.artists
rijk.artist_names
rijk.most_expensive_painting

Artist.most_prolific

Artist.all
ilya.paintings
ilya.galleries
ilya.cities

Artist.total_experience

Artist.most_prolific

ilya.create_painting("Barge Haulers on the Volga", 200, rijk)

Painting.all
Painting.total_price

Gallery.all

smithsonian.paintings
louvre.artists
rijk.artist_names
rijk.most_expensive_painting

binding.pry

puts "Bob Ross rules."
