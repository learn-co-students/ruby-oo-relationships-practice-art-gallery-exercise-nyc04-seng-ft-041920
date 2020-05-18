# **GALLERY**

# - `Gallery.all`

#   - Returns an `array` of all the galleries

# - `Gallery#paintings`

#   - Returns an `array` of all paintings in a gallery

# - `Gallery#artists`

#   - Returns an `array` of all artists that have a painting in a gallery

# - `Gallery#artist_names`

#   - Returns an `array` of the names of all artists that have a painting in a gallery

# - `Gallery#most_expensive_painting`
#   - Returns an `instance` of the most expensive painting in a gallery

class Gallery

  attr_reader :name, :city

  @@all_galleries = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all_galleries << self
  end

  def self.all
    # Returns an `array` of all the galleries
    @@all_galleries
  end

  def paintings
  #   - Returns an `array` of all paintings in a gallery
  Painting.all.select { |painting_ins| painting_ins.gallery == self}
  end

  def artists
  #   - Returns an `array` of all artists that have a painting in a gallery
  self.paintings.collect { |painting_ins| painting_ins.artist}
  end

  def artist_names
    self.paintings.collect { |painting_ins| painting_ins.artist.name}
  end

  def most_expensive_painting
    self.paintings.max { |painting1, paintin2| painting1.price <=> paintin2.price}
  end

end
