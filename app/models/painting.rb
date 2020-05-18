class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self 
  end

  def self.all
    @@all
  end 

  def self.total_price
    # Returns an integer that is the total price of all paintings
  #   total = 0
  #   self.all.map do |painting|
  #     total += painting.price 
  #   end 
  #   return total 
  # end 
  @@all.sum do |painting|
    painting.price
  end
end




