class Painting
  attr_reader :title, :gallery, :price, :artist

  @@all = []

  def self.all
    @@all
  end
  # => #<Painting:0x00007fe7bf883188
  def initialize(title, artist, gallery, price)
    @title = title
    @artist = artist
    @gallery = gallery
    @price = price
    @@all << self
  end

  def self.total_price
    self.all.reduce(0) { |memo, n| memo + n.price.to_i }
  end
end
