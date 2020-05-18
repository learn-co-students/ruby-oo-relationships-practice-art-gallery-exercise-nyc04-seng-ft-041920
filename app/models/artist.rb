class Artist 

@@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end

  
 
  def self.all 
    @@all 
  end 

  # * `Artist#paintings`
  #   * Returns an `array` all the paintings by an artist

def paintings
  Painting.all.select do |painting|
    painting.artist == self 
  end 
end 

# * `Artist#galleries`
# * Returns an `array` of all the galleries that an artist has paintings in

def galleries 
  galleries = paintings.map do |painting|
  painting.gallery
  galleries.uniq
  end 
end 

# # `Artist#cities`
# # * Return an `array` of all cities that an artist has paintings in

 def cities 
  cities = galleries.map do |gallery|
      gallery.city 
      cities.uniq
 end 
end 


#   # * `Artist.total_experience`
#   #   * Returns an `integer` that is the total years of experience of all artists

def self.total_experience
  @@all.sum do |artist|
    return artist.years_experience 
  end 
end 
# # ???????

# # * `Artist.most_prolific`
# # * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

def self.most_prolific
  @@all.max_by do |artist|
    artist.paintings.length / artist.years_experience
  end 
end

# * `Artist#create_painting`
# * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

def create_painting(title, price, gallery)
  Painting.new(title,price,gallery, self)
end 




end 