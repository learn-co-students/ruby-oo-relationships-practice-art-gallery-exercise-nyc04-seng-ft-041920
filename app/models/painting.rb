# **PAINTING**
# - `Painting.all`

#   - Returns an `array` of all the paintings

# - `Painting.total_price`
#   - Returns an `integer` that is the total price of all paintings
class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist_obj, gallery_obj)
    @title = title
    @price = price
    @artist = artist_obj
    @gallery = gallery_obj

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.reduce(0) do |sum, painting_ins|
      sum += painting_ins.price
      sum
    end
    # Below is the same logic but without using reduce method
    # total_price = 0
    # self.all.each do |painting_ins|
    #   total_price += painting_ins.price
    # end
    # total_price
  end

end
