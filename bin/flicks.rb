require "./lib/flicks/playlist"

playlist = Flicks::Playlist.new("Kermit")
default_movie_file = File.join(File.dir(__FILE__), 'movies.csv')
playlist.load(ARGV.shift || default_movie_file)
movie3d = Flicks::Movie3D.new('glee', 5, 20)
playlist.add_movie(movie3d)
loop do
  puts "\nHow many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
    when 'quit', 'exit'
      playlist.print_stats
      break
    when /^\d+$/
      playlist.play(answer.to_i)
    else
      puts "Please enter a number or quit"
  end
end

playlist.save
