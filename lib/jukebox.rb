require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    index = index + 1
    puts "#{index}. #{song}"
  end
end

def play(songs)
    binding.pry
  puts "Please enter a song name or number:"
  input = gets.chomp
  if list(songs).include?input
    puts "Playing #{input}"
  else
    "Invalid input, please try again"
  end
end

# def exit_jukebox
#   puts "Goodbye"
# end

# def run(songs)
#   help
#   puts "Please enter a command:"
#   input = gets.chomp
#   if input == "help"
#     help
#   elsif input == "list"
#     list(songs)
#   elsif input == "play"
#     play(songs)
#   elsif input == "exit"
#     exit_jukebox
#   end
# end