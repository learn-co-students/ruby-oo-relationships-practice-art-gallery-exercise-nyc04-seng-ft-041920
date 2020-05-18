class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    # find all the artist's paintings
    # find all the galleries
    self.paintings.map{|painting| painting.gallery}.uniq #adding uniq to remove duplicates
  end

  def cities
    self.galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    self.all.reduce(0){|total, artist| total + artist.years_experience}
  end

  def self.most_prolific
    most_pro_artist = nil
    most_pro_artist_value = 0

    self.all.each do |artist|
      prolific_value = artist.paintings.size / artist.years_experience.to_f
      if prolific_value > most_pro_artist_value
        most_pro_artist = artist
        most_pro_artist_value = prolific_value
      end
    end
    most_pro_artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
