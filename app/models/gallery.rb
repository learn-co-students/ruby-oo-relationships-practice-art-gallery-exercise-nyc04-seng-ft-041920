class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  #Returns an array of all paintings in a gallery
  def paintings
    Painting.all.select{|p| p.gallery == self}
  end

  #Returns an array of all artists that have a painting in a gallery
  def artists
    paintings.map{|p| p.artist}.uniq
  end

  #Returns an array of the names of all artists that have a painting in a gallery
  def artist_names
    artists.map{|a| a.name}
  end

  #max {|a, b| block} → obj
  #Returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    paintings.max{|a,b| a.price <=> b.price}
  end
    
    
end
