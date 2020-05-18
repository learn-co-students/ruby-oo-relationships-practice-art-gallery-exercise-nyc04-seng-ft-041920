require 'pry'
class Artist

  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paintings| paintings.artist == self}
  end

  def galleries
    paintings.map {|paintings| paintings.gallery}
  end

  def cities
    galleries.map {|paintings| painting.city}
  end

  def self.total_experience
    @@all.map {|artist| artist.years_experience}.reduce
  end

  def self.most_prolific
    @@all.max_by {|artists| artists.painting.count && artist.years_experience}
  end

  def create_painting(title, price, gallery)
    painting.new(title, price, gallery)
  end
  

end
