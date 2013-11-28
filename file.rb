require_relative 'movie'

movie1 = Flicks::Movie.new("goonies", 10)
movie2 = Flicks::Movie.new("Ghostbuster", 9)
movie3 = Flicks::Movie.new("goldfinger")

movies = [movie1, movie2, movie3]

File.open("movie_rankings.csv", "w") do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title}, #{movie.rank}"
  end
end
