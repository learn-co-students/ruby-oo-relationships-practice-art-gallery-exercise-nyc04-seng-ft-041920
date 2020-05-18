class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.collect {|painting| painting.artist}
  end

  def artist_names
    self.artists.collect {|artist| artist.name}
  end

  def most_expensive_painting
    most_expensive = nil
    price = 0
    self.paintings.each do |painting|
      if painting.price > price
        price = painting.price
        most_expensive = painting
      end
    end
    most_expensive
  end
end
