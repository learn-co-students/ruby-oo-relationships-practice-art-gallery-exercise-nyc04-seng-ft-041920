require_relative '../config/environment.rb'

#artist
roman_signer = Artist.new("Roman Signer", 20)
yayoi = Artist.new("Yayoi Kusama", 40)
munk = Artist.new("Munk", 30)
#yayoi.total_experience

#paintings
scream = Painting.new("scream", 2000)
camp = Painting.new("camp installation", 0)
water = Painting.new("waterfall chair", 0)

camp.artist = roman_signer #assigned camp to roman signer's art
scream.artist = munk #assigned scream to munk's art
water.artist = roman_signer #assigned, roman signer's second art

#gallery
tina_kim = Gallery.new("Tina Kim Gallery", "NY")
lelong = Gallery.new("gallery Lelong", "NY")

tina_kim.artist = roman_signer #assigned artist's gallery as tina_kim
lelong.artist = roman_signer

binding.pry

puts "Bob Ross rules."
