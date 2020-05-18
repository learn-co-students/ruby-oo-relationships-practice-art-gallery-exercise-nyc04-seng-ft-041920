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
    # Returns an array of all paintings in a gallery
    Painting.all select do |painting|
      painting.gallery == self
    end 
  end

  def artists
  # Returns an array of all artists that have a painting in a gallery
    self.paintings.collect do |element|
     element.artist  
    end 
  end 

  def artist_names
    # Returns an array of the names of all artists that have a painting in a gallery
    self.artists.map do |element|
      element.name 
    end 
  end 

  def most_expensive_painting
    # Returns an instance of the most expensive painting in a gallery
    price = 0 
    Painting.all.map do |painting|
      if painting.price > price
        price = painting.price 
      else 
        price 
      end 
    end 
    return price 
  end 

end







