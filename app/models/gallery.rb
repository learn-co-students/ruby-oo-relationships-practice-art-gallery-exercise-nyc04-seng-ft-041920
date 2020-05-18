class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    Artist.all.select do |artist|
      artist.gallery == self
    end
  end

  def artist_names
    self.artists.collect do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.max do |a, b|
      a.price <=> b.price
    end
  end

end
