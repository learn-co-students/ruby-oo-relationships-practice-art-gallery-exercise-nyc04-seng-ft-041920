class Artist

  @@all = []

  attr_reader :name, :years_experience, :prolificness

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{
      |piece| piece.artist.name == self.name
  }.map{|piece| piece.title}
  end

  def galleries
    Painting.all.select{ |piece| piece.artist.name == self.name} 
    .map{ |piece| piece.gallery.name}.uniq()
  end

  def cities
    Painting.all.select{ |piece| piece.artist.name == self.name}
    .map{ |piece| piece.gallery.city }.uniq
  end

  def self.total_experience
    self.all.sum{|person| person.years_experience}
  end

  def self.most_prolific
    #self.all.map{|a| a.paintings.length()/a.years_experience.to_f}.max
    self.all.sort_by{ |a| a.paintings.length/a.years_experience.to_f }
    
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery)
  end
    



end
