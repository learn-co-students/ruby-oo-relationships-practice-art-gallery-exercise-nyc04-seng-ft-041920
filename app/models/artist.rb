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
    #note: tried doing the above method using map and got an array of true/false. if you want to get all of the instances, use select
  end

  def galleries
    #the method above this one collected all of the paintings that belong to this artist. this method wants to return the galleries that this artist has painted in. we can go through all of their paintings to collect each gallery. we can do this by calling on the above method.
    paintings.map { |painting| painting.gallery }
  end

  def cities
    #each gallery has a city that it is in, so we can use the above method to iterate over each gallery and collect its city
    galleries.map { |gallery| gallery.city }
  end

def self.total_experience
  self.all.reduce(0) do |total, artists|
    total += artists.years_experience
  end
  #total
  #above^ i thought we had to return the total when using reduce, but when i ran this and tested it, it gave me an error saying undefined local variable/method "total"
end

def self.most_prolific
  #want to return an INSTANCE of the artist
  #with greatest amount of paintings PER year of experience
  #which means we want to divide the amount of paintings by their years of experience, and get the instance where that amount is the highest
  
  # below code does not work
  # amount = 0
  # artist = ""
  # #on each iteration below artist will be an artist instance
  # self.all.each do |artist|
  #   if (artist.paintings.length / artist.years_experience) > amount
  #     amount = artist.paintings.length / artist.years_experience
  #     artist = self
  #   end
  # end
  # artist

  #the ruby method max_by will iterate and find the maximum value based on the  criteria given in the block
  self.all.max_by(1) do |artist|
    #in this case, to obtain the amount of paintings an artist has, we call on artist.paintings.length and then divide it by the artists number of years experience
    #this method should go through and return the one where this is the highest
    artist.paintings.length / artist.years_experience
  end
end

def create_painting(title, price, gallery)
  #def initialize(title, price, artist, gallery)
  Painting.new(title, price, self, gallery)
end

end
