class Painting

  @@all = []

  attr_reader :title, :price, :gallery, :artist

  def initialize(title, artist, gallery, price)
    @title = title
    @gallery = gallery
    @price = price
    @artist = artist 

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum { |artwork| artwork.price  }
    
    #@@all.price.reduce(0) { |sum, n| sum + n }
  end

end
