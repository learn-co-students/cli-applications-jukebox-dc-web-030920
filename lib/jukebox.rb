songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end

def list(songs)
  i = 0
  while i < songs.length do
      puts "#{i + 1}. #{songs[i]}\n"
      i+= 1
  end
  
end

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.chomp
  i = 0
  while i < songs.length do
    if songs[i] == "#{user}" || "#{i + 1}" == "#{user}"
      puts "Playing #{songs[i]}"
      return ""
    else
      puts "Invalid input, please try again"
      break
    end
    i += 1
  end
  
end

def exit_jukebox
  puts "Goodbye"
  
end

def run(songs)
  
  puts "Please enter a command:"
  user = gets.chomp
  value = true
  if user == "exit"
    value = false
  end
  while value do
    if user == "help"
      help
    elsif user == "play"
      play(songs)
    elsif user == "list"
      list(songs)
    end
    user = gets.chomp
    value = true
    if user == "exit"
      value = false
    end
  end
  exit_jukebox
  
  
  
end

