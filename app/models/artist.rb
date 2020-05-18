require_relative 'painting.rb'
require_relative 'gallery.rb'

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all 
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings 
    Painting.all.find_all {|painting| painting.artist == self}
  end

  def galleries 
    self.paintings.collect {|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.collect {|gallery| gallery.city}
  end

  def self.total_experience
    total = 0
    self.all.each {|artist| total += artist.years_experience}
    total
  end

  #paintings/years
  def self.most_prolific
    # artists = Painting.all.map {|painting| painting.artist}
    # count = Hash.new 0
    # artists.each do |artist|
    #   count[artist] +=1
    # end
    # count

    # prolific = 0.000001
    # prolific_artist = ""

    # self.all.each do |artist|
    #   paintings_year = count[artist]/(artist.years_experience.to_f)
    #   if paintings_year > prolific
    #     prolific = paintings_year
    #     prolific_artist = artist
    #   end
    # end
    # prolific_artist

    self.all.map do |artist|
      artist.paintings
    end
  end

end

#Test Data

#Artists
picasso = Artist.new("Pablo Picasso", 70)
van_gogh = Artist.new("Van Gogh", 10)

#Galleries
met = Gallery.new("Metropolitan Museum of Art", "New York")
louvre = Gallery.new("The Louvre", "Paris")

#Paintings
picasso.create_painting("Girl Before A Mirror", 100000, met)
louvre.add_painting("Starry Night", 200000, van_gogh)
van_gogh.create_painting("Cypresses", 150000, met)
van_gogh.create_painting("Sunflowers", 300000, louvre)

pp Artist.most_prolific

# van_gogh paintings = 3
# picasso = 1

