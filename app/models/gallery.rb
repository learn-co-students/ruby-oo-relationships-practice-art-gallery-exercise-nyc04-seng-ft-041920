class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name      # Creates name for gallery
    @city = city      # Creates city for gallery
    @@all << self     # Every time new is called it stores itself in @@all
  end

  def self.all
    @@all # Returns a collection of Gallery Instances
  end

  def paintings
    Painting.all.select{|painting| 
      painting.gallery == self  # If current gallery is in painting select that painting
    }
  end

  def artists
     # Grabs paintings in current gallery and returns the artists
    paintings.map(&:artist)
  end

  def artist_names
    artists.map(&:name) # Collect all of the names from the artists in this gallery
  end

  def most_expensive_painting
    most_bougee = 0
    # paintings.select(&:price>most_bougee)
    paintings.select {|painting|
      most_bougee = painting.price if painting.price > most_bougee # Grabs most expensive picture in gallery
    }
    most_bougee
  end
end
