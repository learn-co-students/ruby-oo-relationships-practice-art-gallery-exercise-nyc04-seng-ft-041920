# Art Gallery Lab

In this project, we will be practicing object relationships in Ruby, with a particular emphasis on the `has_many` `through` relationship (aka: many-to-many). Please read the whole README before writing any code!

### Introduction

You got yourself a fancy new job and you've been put in charge of making a program to keep track of paintings, and the galleries that are selling them.  

Each painting has a price, and a title.  Each artist has a name and an amount of years of experience, and each gallery has a name and a city.

The initial files and basic attributes have already been built, but you'll need to figure out the relationships and build the rest of the app out yourself!

## Deliverables

### Model the Domain

An artist can, of course, have many paintings. Paintings can only be in one gallery at a time, and only have one artist.  Galleries can have many paintings.

* What are your models?
* What does your schema look like?
* What are the relationships between your models?



### Class Attributes and Methods

**ARTIST**

- [x] `Artist.all`
    * Returns an `array` of all the artists
```ruby
=> [#<Artist:0x00005604f58ac2d0 @name="Leonardo Da Vinci", @years_experience=25>, #<Artist:0x00005604f58ac280 @name="Vincent Van Gogh", @years_experience=30>, #<Artist:0x00005604f58ac230 @name="Diego Rivera", @years_experience=15>, #<Artist:0x00005604f58ac1e0 @name="Ilya Repin", @years_experience=20>, #<Artist:0x00005604f58ac190 @name="Pieter Bruegel the Elder", @years_experience=10>]
```
---
- [x] `Artist#paintings`
    * Returns an `array` all the paintings by an artist
```ruby
ilya.paintings
=> [#<Painting:0x000055dc5c983a80 @title="Reply of the Zaporozhian Cossacks to Sultan Mehmed IV of the Ottoman Empire", @price=275, @artist=#<Artist:0x000055dc5cb2c008 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x000055dc5cb2c148 @name="Rijksmuseum", @city="Amsterdam, NL">>, #<Painting:0x000055dc5c983940 @title="Ivan the Terrible and his Son", @price=750, @artist=#<Artist:0x000055dc5cb2c008 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x000055dc5cb2c148 @name="Rijksmuseum", @city="Amsterdam, NL">>]
```
---
- [x]  * `Artist#galleries`
    * Returns an `array` of all the galleries that an artist has paintings in
```ruby
ilya.galleries
=> [#<Gallery:0x00005623ec1441f8 @name="Rijksmuseum", @city="Amsterdam, NL">]
```
---
- [x] `Artist#cities`
    * Return an `array` of all cities that an artist has paintings in
```ruby
ilya.cities
=> ["Amsterdam, NL"]
```
---
- [x] `Artist.total_experience`
    * Returns an `integer` that is the total years of experience of all artists
```ruby
Artist.total_experience
=> 100
```
---
- [x] `Artist.most_prolific`
    * Returns an `instance` of the artist with the highest amount of paintings per year of experience.
```ruby
Artist.most_prolific
=> #<Artist:0x00005648cf5d8090 @name="Vincent Van Gogh", @years_experience=30>
```
- [x] `Artist#create_painting`
    * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
```ruby
ilya.create_painting("Barge Haulers on the Volga", 200, rijk)
=> #<Painting:0x000055a4690f8be8 @title="Barge Haulers on the Volga", @price=200, @artist=#<Artist:0x000055a4690fbeb0 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x000055a4692a0108 @name="Rijksmuseum", @city="Amsterdam, NL">>
```
---
**PAINTING**

- [x] `Painting.all`
    * Returns an `array` of all the paintings
```ruby
Painting.all
=> [#<Painting:0x0000562319ae73c8 @title="Mona Lisa", @price=300, @artist=#<Artist:0x0000562319ae78a0 @name="Leonardo Da Vinci", @years_experience=25>, @gallery=#<Gallery:0x0000562319ae7be8 @name="Le Louve", @city="Paris FR">>, #<Painting:0x0000562319ae7030 @title="Starry Night", @price=220, @artist=#<Artist:0x0000562319ae77d8 @name="Vincent Van Gogh", @years_experience=30>, @gallery=#<Gallery:0x0000562319ae7a58 @name="Metropolitan Museum of Art", @city="New York City NY">>, #<Painting:0x0000562319ae6ea0 @title="Man in the Gray Sweater", @price=325, @artist=#<Artist:0x0000562319ae7738 @name="Diego Rivera", @years_experience=15>, @gallery=#<Gallery:0x0000562319ae7c88 @name="Smithsonian Institute", @city="Washington DC">>, #<Painting:0x0000562319ae6ce8 @title="Reply of the Zaporozhian Cossacks to Sultan Mehmed IV of the Ottoman Empire", @price=275, @artist=#<Artist:0x0000562319ae7698 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x0000562319ae7918 @name="Rijksmuseum", @city="Amsterdam, NL">>, #<Painting:0x0000562319ae6b58 @title="The Tower of Babel", @price=500, @artist=#<Artist:0x0000562319ae75f8 @name="Pieter Bruegel the Elder", @years_experience=10>, @gallery=#<Gallery:0x0000562319ae7918 @name="Rijksmuseum", @city="Amsterdam, NL">>, #<Painting:0x0000562319ae6a18 @title="Ivan the Terrible and his Son", @price=750, @artist=#<Artist:0x0000562319ae7698 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x0000562319ae7918 @name="Rijksmuseum", @city="Amsterdam, NL">>, #<Painting:0x0000562319c93ed8 @title="Barge Haulers on the Volga", @price=200, @artist=#<Artist:0x0000562319ae7698 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x0000562319ae7918 @name="Rijksmuseum", @city="Amsterdam, NL">>]
```
---
- [x] `Painting.total_price`
    * Returns an `integer` that is the total price of all paintings
```ruby
Painting.total_price
=> 2570
```
---
**GALLERY**

- [x] `Gallery.all`
    * Returns an `array` of all the galleries
```ruby
Gallery.all
=> [#<Gallery:0x00005630214c8108 @name="Smithsonian Institute", @city="Washington DC">, #<Gallery:0x00005630214c8090 @name="Le Louve", @city="Paris FR">, #<Gallery:0x00005630214c8018 @name="Metropolitan Museum of Art", @city="New York City NY">, #<Gallery:0x0000563021323f28 @name="Rijksmuseum", @city="Amsterdam, NL">]
```
---
- [x] `Gallery#paintings`
    * Returns an `array` of all paintings in a gallery
```ruby
smithsonian.paintings
=> [#<Painting:0x000056323012bac0 @title="Man in the Gray Sweater", @price=325, @artist=#<Artist:0x00005632302d4098 @name="Diego Rivera", @years_experience=15>, @gallery=#<Gallery:0x00005632302d42f0 @name="Smithsonian Institute", @city="Washington DC">>]
```
---
- [x] `Gallery#artists`
    * Returns an `array` of all artists that have a painting in a gallery
```ruby
louvre.artists
=> [#<Artist:0x0000562be52affa0 @name="Leonardo Da Vinci", @years_experience=25>]
```
---
- [x] `Gallery#artist_names`
    * Returns an `array` of the names of all artists that have a painting in a gallery
```ruby
rijk.artist_names
=> ["Ilya Repin", "Pieter Bruegel the Elder"]
```
---
- [x] `Gallery#most_expensive_painting`
    * Returns an `instance` of the most expensive painting in a gallery
```ruby
rijk.most_expensive_painting
=> #<Painting:0x000055bb0651af10 @title="Ivan the Terrible and his Son", @price=750, @artist=#<Artist:0x000055bb0651bb18 @name="Ilya Repin", @years_experience=20>, @gallery=#<Gallery:0x000055bb0651be38 @name="Rijksmuseum", @city="Amsterdam, NL">>
```
---
