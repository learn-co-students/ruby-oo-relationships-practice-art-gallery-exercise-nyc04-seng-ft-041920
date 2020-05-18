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
    Painting.all.select do |each_painting|
      each_painting.artist == self
    end
  end

  def galleries
    Gallery.all.select do |each_gallery|
      each_gallery.artist == self
    end
  end

  def cities
    Gallery.all.map do |each_gallery|
      p each_gallery.city
      # each_gallery.artist[:city]
      # each_gallery.artist.city
    end
  end

  def self.total_experience #need to call in console like this, 'Artist.total_experience'.
    total_years = 0
    self.all.map do |each_artist|
       total_years += each_artist.years_experience
    end
    total_years
  end

  def self.most_prolific
    highest_amount_of_painting_per_year = 0

  end

  def create_painting(title, price, gallery)
    

  end

end

