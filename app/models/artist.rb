class Artist
  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      # binding.pry
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      # binding.pry
      painting.gallery
    end.uniq
  end

  def cities
    cities = galleries.map { |gallery| gallery.city }
    cities.uniq
  end

  def self.total_experience
    self.all.reduce(0) { |memo, artist| memo + artist.years_experience }
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.size / artist.years_experience
    end
  end

  def create_painting(title, gallery, price)
    Painting.new(title, self, gallery, price)
  end
end
