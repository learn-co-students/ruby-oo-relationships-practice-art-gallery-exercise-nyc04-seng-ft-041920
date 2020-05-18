# - `Artist.all`

#   - Returns an `array` of all the artists

# - `Artist#paintings`

#   - Returns an `array` all the paintings by an artist

# - `Artist#galleries`

#   - Returns an `array` of all the galleries that an artist has paintings in

# - `Artist#cities`

#   - Return an `array` of all cities that an artist has paintings in

# - `Artist.total_experience`

#   - Returns an `integer` that is the total years of experience of all artists

# - `Artist.most_prolific`

#   - Returns an `instance` of the artist with the highest amount of paintings per year of experience.

# - `Artist#create_painting`
#   - Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

class Artist
  attr_reader :name, :years_experience

  @@all_artists = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all_artists << self
  end

  def self.all
    @@all_artists
  end

  def paintings
    Painting.all.select { |painting_ins| painting_ins.artist == self}
  end

  def galleries
    self.paintings.collect { |painting_ins| painting_ins.gallery}
  end

  def cities
  # Return an `array` of all cities that an artist has paintings in
    self.paintings.collect { |painting_ins| painting_ins.gallery.city}
  end

  def self.total_experience
    # Returns an `integer` that is the total years of experience of all artists
    self.all.reduce(0) do |total_years, artist_ins|
      total_years += artist_ins.years_experience
      total_years
    end
  end

  def self.most_prolific
    # Returns an `instance` of the artist with the highest amount of paintings per year of experience.
    self.all.max { |artist1, artist2| artist1.years_experience <=> artist2.years_experience}
  end

  def create_painting title_input, price_input, gallery_input
    # Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
    Painting.new(title_input, price_input, self, gallery_input)
  end

end
