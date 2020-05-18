class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name                            # Creates name for Artist
    @years_experience = years_experience    # Creates Years of experience for artist
    @@all << self                           # Stores itself into @@all when new is called
  end

  def self.all
    @@all    # Returns a collection of Artist Instances
  end

  def paintings
    Painting.all.select{|painting|
      painting.artist == self       # Returns a collection of all paintings with this artist
    }
  end

  def galleries
    paintings.map(&:gallery)        # Returns a collection of galleries garnered from paintings
  end

  def cities
    galleries.map(&:city).uniq      # Returns an array of all cities the artist is currently in, filtering out duplicates of current elements
  end

  def self.total_experience
    self.all.map(&:years_experience).compact.reduce(:+) 
    # Creates an array of each artist's years of experience.
    # Then removes all of the nil values
    # and combines each element by adding them together.
  end

  def self.most_prolific
    
    y = 100
    z = nil

    self.all.each do |artisto|
      x = 0

      Painting.all.select do |painting|
        if artisto == painting.artist
          x += 1        
        end
      end

      if (artisto.years_experience / x) < y
        y = artisto.years_experience / x
        z = artisto
      end
    end

    z
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)   # Creates a new paiting
  end

end