class Painting

  attr_reader :title, :price, :artist, :gallery  

@@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist 
    @gallery = gallery 

    @@all << self 
  end

  def self.all 
    @@all 
  end 

  # * `Painting.total_price`
  # * Returns an `integer` that is the total price of all paintings

  def self.total_price
    @@all.sum do |painting|
      painting.price
    end 
  end


end
