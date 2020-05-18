class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  #Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select{|p| p.artist == self}
  end

  #Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    paintings.map{|p| p.gallery}.uniq
  end

  #Return an `array` of all cities that an artist has paintings in
  def cities
    galleries.map{|g| g.city}.uniq
  end

  #Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    total = 0
    self.all.each do |artist|
      total += artist.years_experience
    end
    total
  end

  #Returns an `instance` of the artist with the highest amount of paintings per year of experience
  #eg 10painting 3yr_e = 3.3painting per year :: 1painting 10yr_e = 0.1 painting per year                painting/yr_e.to_f
  #run through each artist, get painting/yr_e.to_f and find max
  def self.most_prolific
    #binding.pry
    self.all.max{|a,b| a.paintings.count/a.years_experience <=> b.paintings.count/b.years_experience}
  end

  #Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end

#Artist -< Paintngs >-Gallery

  

