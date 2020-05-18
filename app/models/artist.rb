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
    # Returns an array all the paintings by an artist
    Painting.all.select do |painting|
      painting.artist == self 
    end 
  end 

  def galleries
    #Returns an array of all the galleries that an artist has paintings in
    Gallery.all.select do |painting|
      painting.gallery == self 
    end 
  end 

  def cities
    #Return an array of all cities that an artist has paintings in
  Gallery.all.map do |element|
    element.city 
    end 
  end 

  def self.total_experience
    # Returns an integer that is the total years of experience of all artists
    total = 0
    Artist.all.map do |painter|
      total += painter.years_experience
    end 
  end

  def self.most_prolific
    #Returns an instance of the artist with the highest amount of paintings 
    #per year of experience.
    amount = 0
    Artist.all.each do |painter|
      if new_amount = painter.years_experience / Painting.count.to_i > amount
        new_amount = amount 
      else
        amount 
      end 
      return amount
  end 
end 

  def create_painting(title, price, gallery)
    #Given the arguments of title, 
    #price and gallery, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end 

end











