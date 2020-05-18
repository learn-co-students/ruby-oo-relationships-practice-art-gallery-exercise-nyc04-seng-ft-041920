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

  def self.total_experience
    self.all.collect {|xp| xp.years_experience}.reduce(0) {|total, sum| total + sum}
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def galleries
    paintings.collect {|art| art.gallery}.uniq
  end

  def cities
    galleries.collect {|location| location.city}.uniq
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.years_experience / artist.paintings.count}
  end
end
