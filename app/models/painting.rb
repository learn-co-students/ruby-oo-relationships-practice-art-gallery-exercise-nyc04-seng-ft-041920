class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist)
    @title = title
    @price = price
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.reduce(0) do |sum, painting|
      sum + painting.price
    end
  end

end
