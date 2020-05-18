class Painting

  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    self.class.all << self
  end

  def self.all
    @@all
  end

  #Returns an integer that is the total price of all paintings
  def self.total_price
    self.all.map{|p| p.price}.sum
  end

end
