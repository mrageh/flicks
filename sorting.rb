require_relative 'movie'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("god father", 2)
movie3 = Movie.new("goldfinger", 7)

movies =  [movie1, movie2, movie3]

puts movies.sort
