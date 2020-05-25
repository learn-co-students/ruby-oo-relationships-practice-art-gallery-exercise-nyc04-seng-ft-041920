class Gallery

  @@all = []

  attr_reader :name, :city, :gallery

  def initialize(name, city)
    @name = name
    @city = city
    

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{ |piece| 
      piece.gallery.name == self.name 
      
    }
    
  end

  def artists
    Painting.all.select{ |piece| piece.gallery.name == self.name}
    
  end

  def artist_names
    Painting.all.select{ |piece| piece.gallery.name == self.name}
    .map{|piece| piece.artist.name}
  end

  def most_expensive_painting
    Painting.all.select{
      |piece| piece.gallery.name ==self.name
  }.sort_by {|inst| inst.price}[-1]
  end

end
