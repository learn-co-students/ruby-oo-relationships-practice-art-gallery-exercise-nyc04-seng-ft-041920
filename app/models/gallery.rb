class Gallery

  @@all = []

  attr_reader :name, :city
  attr_accessor :artist  #in order to add the artist in the console, it needs to be an attr_accessor macro

  def initialize(name, city)
    @name = name
    @city = city
    @artist = artist

    @@all <<self
  end

  def self.all
    @@all
  end

end
