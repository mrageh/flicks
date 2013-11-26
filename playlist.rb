require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist
  attr_reader :name
  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play
    puts "#{name}'s playlist:"
    puts @movies

    @movies.each do |movie|
      WaldorfAndStatler.review(movie)
    end
  end

end
