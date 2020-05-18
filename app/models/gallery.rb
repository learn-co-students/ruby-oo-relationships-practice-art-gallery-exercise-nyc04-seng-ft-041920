class Gallery

  attr_reader :name, :city, :artist, :painting

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
    #this method will return an array of the paintings(for me this means the title of them) in a gallery
    # paintings = []
    # Painting.all.each do |painting|
    #   if painting.gallery == self
    #     paintings << painting.title
    #   end

    #return an array of painting instances in a gallery
    #iterating over all the paintings, and select the instances where the gallery is self
      Painting.all.select do |painting|
        painting.gallery == self
      end
  end

  def artists
    # artists = []
    # Painting.all.each do |painting|
    #   if painting.gallery == self
    #     artists << painting.artist
    #   end
    # artists

    #we can use the method from above, which will give us the painting instances that are linked to this gallery
    #this will give us the artist INSTANCES
    paintings.map do |painting|
      painting.artist
    end
  end

    def artist_names
      artists.map { |artist| artist.name }
    end

    def most_expensive_painting
      #is a painting instance a string or an array
      most_expensive_painting = ""
      most_expensive = 0
      paintings.each do |painting|
        if painting.price > most_expensive
          most_expensive_painting = painting
          most_expensive = painting.price
        end
      end
      most_expensive_painting
    end


end
