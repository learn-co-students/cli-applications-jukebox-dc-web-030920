# Add your code here
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
  songs.each_with_index {|song,index| puts "#{index + 1}. #{song}"}
end

def prompt_message
  puts "Please enter a song name or number:"
end


def gets_input
  gets.strip
end

def invalid_command
  puts "Invalid input, please try again"
end
def exit_jukebox
  puts "Goodbye"
end
def play(songs)
			prompt_message
		input = gets_input
		string_input = input.to_s
		int_input = input.to_i

		if string_input == 'exit'
			  return exit_jukebox
		end
    	i = 0
		while i < songs.length do
			song_name = songs[i]
			song_index = songs.index(song_name)
			if int_input == (song_index + 1)
				puts "Playing #{song_name}"
				exit #// had to write this cause it would print the invalid message afterwards.
			elsif string_input == song_name
				puts song_name
				exit
			end
			i += 1
		end
		# if input.to_i == 0
		# 	invalid_command
		# elsif input.to_i > songs.count && input != 'exit'
		# 	invalid_command
		# end

end
