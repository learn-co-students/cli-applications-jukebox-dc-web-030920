# Add your code here
def say_hellp(name)
  "Hi #{name}!"
end 

def user_input
  gets.strip
end 

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  hash = {}
  songs.each_with_index {|song, index|
    index += 1
    hash[index] = song}
  hash.each_pair do |key,value| 
  puts "#{key}. #{value}"
  end
end  

def play(songs)
puts "Please enter a song name or number:"
 input = gets.strip
 hash = {}
  songs.each_with_index {|song, index|
    index += 1
    hash[index] = song}
message = "Invalid input, please try again"
hash.each_pair do |key, value| 
  if input == value 
    message = "Playing #{value}"
  else
     s = input.to_i
     if s == key
        message = "Playing #{value}"
      end 
  end 
  end
  puts message
end



def exit_jukebox 
  puts "Goodbye"  
  exit
end 

def commands(songs, input)
  if input == "help"
    help 
  end 
  if input == "list"
    list(songs)
  end 
  if input == "play"
    play(songs)
  end 
  if input == "exit"
    exit_jukebox
  end 
end 

def prompt_user (songs)
puts "Please enter a command:"
 commands(songs, user_input)
end 

def run(songs)
 prompt_user(songs)
end 
