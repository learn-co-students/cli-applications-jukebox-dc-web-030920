# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index do |song, index|
    num = index + 1
    if songs[index].include?(input)
      puts "Playing #{song}"
      return
    elsif input.to_i >= 1 && input.to_i <= songs.count
      puts "Playing #{songs[input.to_i-1]}"
      return
    end

  end
  puts "Invalid input, please try again"


end

def list(songs)
  songs.each_with_index do | song, index |
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox

  puts "Goodbye"
end

def run(songs)
  command = nil
  while command != "exit"
    puts "Please enter a command:"
    command = gets.strip
    if command == "play"
      play(songs)
    elsif command == "list"
      list(songs)
    elsif command == "help"
      help
    end
  end
  exit_jukebox
end
