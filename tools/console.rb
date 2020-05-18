require_relative '../config/environment.rb'



alexandra = Artist.new("ALEXANDRA", 8) # 3 => 8 / 3 = every 2.6 years 1 painting
marcelo = Artist.new("MARCELO", 13) # 2 => 13 / 2 = every 6 years 1 painting
marcio = Artist.new("MARCIO", 5) # 0 
marcus = Artist.new("MARCUS", 9) # 1 => 9 / 1 = every 9 years 1 paiting

alltogether = Gallery.new("ALL TOGETHER", "NEW YORK")
tudojunto = Gallery.new("TUDO JUNTO", "RIO DE JANEIRO")
tuttiinsieme = Gallery.new("TUTTI INSIEME", "MILAN")


# (title, price, gallery)
alexandra.create_painting("I LOVE FLOWERS", alltogether, 2000.0)
alexandra.create_painting("BUNNIES", alltogether, 200.0)
alexandra.create_painting("TINY BAGS", tudojunto, 300.0)
alexandra.create_painting("LOVE SHOES", tudojunto, 200.0)

marcelo.create_painting("ELETRONICS", tudojunto, 200.0)
marcelo.create_painting("MOTORCYCLES", tudojunto, 500.0)

marcio.create_painting("FALSO PROFETA", alltogether, 10.0)

marcus.create_painting("COMIC BOOKS", tuttiinsieme, 1000.0)
# marcus.create_painting("CIGARETS", tuttiinsieme, 500.0)

puts "============================================="
puts "            Artist#paintings"
puts "============================================="
# pp alexandra.paintings
puts ""
# pp marcelo.paintings
# binding.pry
puts "============================================="
puts "            Artist#galleries"
puts "============================================="
# p alexandra.galleries
puts ""
# p marcelo.galleries
puts "============================================="
puts "            Artist#cities"
puts "============================================="
# p alexandra.cities
puts ""
# p marcelo.cities
puts "============================================="
puts "            Artist.total_experience"
puts "============================================="
puts ""
p Artist.total_experience
puts ""
puts "============================================="
puts "            Artist.most_prolific"
puts "============================================="
puts ""
p Artist.most_prolific
puts ""
puts "============================================="
puts "            Painting.total_price"
puts "============================================="
puts ""
pp Painting.total_price
puts ""
puts "============================================="
puts "            Gallery#paintings"
puts "============================================="
puts ""
pp alltogether.paintings
puts ""
pp tuttiinsieme.paintings
puts ""
puts "============================================="
puts "            Gallery#artists"
puts "============================================="
puts ""
pp alltogether.artists
puts ""
puts "============================================="
puts "            Gallery#artist_names"
puts "============================================="
puts ""
p alltogether.artist_names
puts ""
puts "============================================="
puts "      Gallery#most_expensive_painting"
puts "============================================="
puts ""
p alltogether.most_expensive_painting
puts ""
puts "Bob Ross rules."
