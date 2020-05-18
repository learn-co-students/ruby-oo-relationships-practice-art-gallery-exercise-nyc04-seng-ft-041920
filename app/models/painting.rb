class Painting

  attr_reader :title, :price 
  attr_accessor :artist, :gallery

  @@all = []

  ##how can i collect specific artist's paintings? A: have to write it in the console. lol. the code is written already.

  def initialize(title, price)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

end


#original
# class Painting

#   attr_reader :title, :price, :artist, :gallery

#   @@all = []

#   def initialize(title, price)
#     @title = title
#     @price = price
   
#   end

#   def self.all
#     @@all
#   end

#  end