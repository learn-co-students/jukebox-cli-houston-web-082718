# def say_hello(name)
# 	"Hi #{name}!"
# end

# puts "Enter your name:"
# user_name = gets.chomp

# puts say_hello(user_name)

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
	puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
	songs.each.with_index(1) do |song, index|
		puts "#{index}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	user_input = gets.chomp
	if (1..9).include?(user_input.to_i)
    	puts "Playing #{songs[user_input.to_i - 1]}"
	elsif songs.include?(user_input)
		puts "Playing #{user_input}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help

	input = ""
	while input != "exit"
		puts "Please enter a command:"
		input = gets.downcase.chomp
		if input == "help"
			help
		elsif input == "play"
			play(songs)
		elsif input == "list"
			list(songs)
		elsif input == "exit"
			exit_jukebox
		end
	end
end
