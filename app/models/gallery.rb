class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
  end

  def self.all 
    @@all
  end

  def add_painting(title, price, artist)
    Painting.new(title, price, artist, self)
  end

  def paintings
    Painting.all.find_all {|painting| painting.gallery == self}
  end

  def artists 
    self.paintings.collect {|painting| painting.artist}.uniq
  end

  def artist_names
    self.artists.collect {|artist_instance| artist_instance.name}
  end

#this needs to be refactored
  def most_expensive_painting
    most_expensive_price = 0
    expensive_painting = ""
    self.paintings.each do |painting|
      if painting.price > most_expensive_price
        most_expensive_price = painting.price 
        expensive_painting = painting
      end
    end
    expensive_painting
  end

end
