class Gallery

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    # @@all << self 
  end

  @all = []

    def self.all
      @@all
    end 


  def painting
    Painting.all.select do |painting|
      painting.gallery == self 
    end 
  end 

  def artist
    Painting.all.select do |painting|
      painting.artist == self 
    end 
  end 

  def artist_names
    artist.map do |artist| 
      artist.name
    end 
  end 

  # `Gallery#paintings`
  # * Returns an `array` of all paintings in a gallery

def most_expensive_painting
  x = []
    x << paintings.sort { |a,b| a.price <=> b.price }.reverse 
  x[0] 
end 
    end 


# Note: This <=> symbol is called “the spaceship operator” & it’s a method you can implement in your class. It should return 1 (greater than), 0 (equal) or -1 (less than).

