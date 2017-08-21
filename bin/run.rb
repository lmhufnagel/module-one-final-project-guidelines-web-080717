require_relative 'config/environment'

def valid_account (username)
  "Please enter your username"
  gets.chomp
  if member.username.include? "username"
    puts welcome
  else
    puts "Youre not yet a member! Lets change that! Please return to the homepage and create an account"
  end

def welcome
  puts "Hey there! #{username}! We want to hear what you have to say!"
end

def get_character_from_user
  puts "What do you think will make our project better? Please drop a note in our suggestion box!"
  gets.chomp
end

def add_date_time
  change_table 'MYTABLE' do |table|
    add_column(:mytable, :my_field_name, :integer)
  end
end 
