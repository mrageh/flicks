class Movie
  attr_reader :rank
  attr_accessor :title
  def initialize(title, rank=0)
    @title = title.capitalize
    @rank  = rank
  end

  def normalised_rank
    @rank / 10
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end
end

#example code of how to use the movie
if __FILE__ == $0
  movie = Movie.new("goonies", 10)
  puts movie.title
  puts movie.rank

  movie.thumbs_up
  movie.thumbs_up
  puts movie.rank

  movie.thumbs_down
  puts movie.rank
  puts movie
end
