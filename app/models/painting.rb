class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title      # Title of instance of <Class: Painting>
    @price = price      # Price of instance of <Class: Painting>
    @artist = artist    # Is an instance of <Class: Artist>
    @gallery = gallery  # Is an instance of <Class: Gallery>

    # every time a new instance is created shovel it into the @@all array
    @@all << self       
  end

  def self.all
    @@all # Returns a collection of Painting Instances
  end

  def self.total_price
     # Compact removes nil values
    @@all.map(&:price).compact.reduce(:+) # Reduce(:+) collapses each element by adding them together.
  end

end
