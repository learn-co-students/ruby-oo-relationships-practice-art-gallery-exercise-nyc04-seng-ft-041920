class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.map {|paintings| paintings.price}.reduce
  end


end

 




#artist ---> painting <--- gallery