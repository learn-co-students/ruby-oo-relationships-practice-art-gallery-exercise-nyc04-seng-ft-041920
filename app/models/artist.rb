class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price, self)
    painting.gallery = gallery
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    galleries_array = []
    self.paintings.each do |painting|
      if painting.gallery != nil
        galleries_array << painting.gallery
      end
    end
    galleries_array
  end

  def cities
    self.galleries.collect {|gallery| gallery.city}
  end

  def self.total_experience
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    prolific_index = 0
    most_prolific = nil
    self.all.each do |artist|
      current_index = artist.paintings.count / artist.years_experience
      if current_index > prolific_index
        most_prolific = artist
      end
    end
    most_prolific
  end
end
