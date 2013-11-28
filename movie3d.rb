require_relative "movie"

class Movie3D < Movie
  def initialize(title, rank, wow_factor)
    super(title, rank)
    @wow_factor = wow_factor
  end

  def thumbs_up
    @wow_factor.times {super}
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end
end

# mov3d = Movie3D.new('glee', 5, 20)
# puts mov3d.title
# puts mov3d.rank
# mov3d.thumbs_up
# puts mov3d.rank
# puts mov3d
# mov3d.show_effect
