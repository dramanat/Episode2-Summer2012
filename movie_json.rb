require_relative "lib/movie"
require_relative "lib/api"

def find_movie
  puts "OH HI. Search?"
  movie_title = gets
  movie = Api.search_by_title(movie_title)
  if movie == :no_movie_found
    puts "Invalid movie title : #{movie_title.strip}"
  else
    puts "Found: #{movie.title}. Score: #{movie.score}"
  end
end

find_movie

while true do
  puts "Search Again (Y/N)" 
  answer = gets.upcase[0]
  if answer == "Y"
    find_movie
  else
    break
  end
end
