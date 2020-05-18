class Painting

  attr_reader :title, :price, :artist, :gallery
  @@all = []

  def initialize(title, artist, gallery, price=0.0)
    @title = title
    @artist = artist
    @gallery = gallery
    @price = price

    @@all << self
  end

  def self.total_price
    self.all.reduce(0) { |sum, painting| sum + painting.price }
  end
  
  def self.all
    @@all
  end
end
