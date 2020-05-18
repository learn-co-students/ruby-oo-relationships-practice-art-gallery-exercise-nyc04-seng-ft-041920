require_relative '../config/environment.rb'


artist1 = Artist.new("Tom", 30)
artist2 = Artist.new("Barbara", 40)
artist3 = Artist.new("Robert", 70)
artist4 = Artist.new("Nancy", 60)

gallery_01 = Gallery.new("GP-Gallery", "NY")
gallery_02 = Gallery.new("MOMA", "NY")
gallery_03 = Gallery.new("Tate", "LND")

painting_01 = Painting.new("AAA",30000,artist1,gallery_03)
painting_02 = Painting.new("BBB",200000,artist1,gallery_03)
painting_03 = Painting.new("CCC",300,artist2,gallery_01)
painting_04 = Painting.new("DDD",40000,artist2,gallery_03)
painting_05 = Painting.new("EEE",5000,artist3,gallery_02)
painting_06 = Painting.new("FFF",1000000,artist1,gallery_02)
painting_07 = Painting.new("GGG",2000,artist1,gallery_01)
binding.pry

puts "Bob Ross rules."
