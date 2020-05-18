class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price

    @@all << self 
  end

  def self.all
    @@all
  end 

  def self.total_price
    # Returns an integer that is the total price of all paintings
    total = 0
    Painting.all.map do |painting|
      total += painting.price 
    end 
    return total 
  end 

end




