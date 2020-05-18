class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    self.all.sum do |artist|
      artist.years_experience
    end
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title, price, gallery, artist)
    new_painting = Painting.new(title, price, gallery, self)
  end

end