require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'

class Playlist
  attr_reader :name
  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play(viewings)
    puts "#{name}'s playlist:"
    puts @movies.sort

    snacks = SnackBar::SNACKS
    puts "\nThere are #{snacks.count} snacks available in the snack bar"

    snacks.each do |snack|
      puts "#{snack.name} has #{snack.carbs} carbs"
    end

    1.upto(viewings) do |count|
      puts "\nViewing #{count}"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        snack = SnackBar.random
        movie.ate_snack(snack)
        puts movie
      end
    end
  end

  def total_carbs_consumed
    @movies.reduce(0) do |sum, movie|
      sum + movie.carbs_consumed
    end
  end

  def print_stats
    puts "\n#{@name}'s Status:"

    puts "#{total_carbs_consumed} total carbs consumed"

    @movies.sort.each do |movie|
      puts "\n#{movie.title}'s snack totals:"
      puts "#{movie.carbs_consumed} grand total carbs"
    end

    hits, flops = @movies.partition { |movie| movie.hit? }

    puts "\nHits:"
    puts hits.sort
    puts "\n Flops"
    puts flops.sort
  end
end
