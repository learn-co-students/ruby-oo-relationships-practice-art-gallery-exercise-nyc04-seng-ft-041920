class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    self.galleries.map { |gallery| gallery.city }.uniq
  end

  def self.total_experience
    self.all.reduce(0) { |sum, exp| sum + exp.years_experience }
    # binding.pry
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end


  def create_painting(title, gallery, price)
    Painting.new(title, self, gallery, price)
  end

  def self.all
    @@all
  end
end


#   average_painting_year = 999
#   prolific_artist = nil
#   Painting.all.each do |painting|
#     greatest_average = painting.artist.years_experience / painting.artist.paintings.count
#     if average_painting_year > greatest_average
#       average_painting_year = greatest_average
#       prolific_artist = painting.artist.name
#     end
#   end
#   prolific_artist
# end