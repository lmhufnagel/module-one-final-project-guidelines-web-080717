require_relative 'config/environment'


def welcome
  puts "Hey there! #{username}! We want to hear what you have to say!"
end

def get_character_from_user
  puts "What do you think will make our project better? Please drop a note in our suggestion box!"
  gets.chomp
end
