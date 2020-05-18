class Painting
  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.collect {|painting| painting.price}.reduce(0) {|total, sum| total + sum}
  end
end
