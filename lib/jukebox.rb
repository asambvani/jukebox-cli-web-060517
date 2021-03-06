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
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  #puts "Please enter a song name or number:"
  song = gets.chomp
  if song.to_i.is_a? Integer
    if song.to_i >= 1 && song.to_i <= 10
      puts "Playing #{songs[song.to_i-1]}"
    else
      puts "Invalid input, please try again"
    end
  end
  if songs.include?(song)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  response = gets.chomp
  case response
  when "list"
    list (songs)
  when "help"
    help
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
    run(songs)
  end
end
