class Artist

  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def paintings 
    Painting.all.select{|painting| painting.artist == self }
  end 

  def galleries 
    self.paintings.map{|painting| painting.gallery}
  end 

  def cities 
    self.galleries.map{|gallery| gallery.city}.uniq 
  end 

  def self.total_experience 
    self.all.reduce(0){|total, artist| total + artist.years_experience}
  end 

  #helper method to return number of paintings 
  def num_paintings
    self.paintings.count 
  end 

  def self.most_prolific
    #highest amount of paintings per year of experience 
    self.all.max{|a,b| a.num_paintings.to_f/a.years_experience <=> b.num_paintings.to_f/b.years_experience}
  end 

  def create_painting(title, price, gallery)
    #title, price, artist, gallery
    Painting.new(title, price, self, gallery)
  end 

end
