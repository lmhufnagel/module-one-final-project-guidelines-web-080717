class CommandLineInterface

  def valid_account
    puts "Please enter your username"
    name = gets.chomp
    binding.pry
    if Member.find_by(username: name)
      puts welcome
    else
      puts "Bummer, looks like you're not a member yet! Lets change that! Please return to the homepage and create an account"
    end
    binding.pry
  end

  def welcome
    puts "Hey there! #{username}! We want to hear what you have to say!"
  end

  def which_project
    puts"Which project are you interested in?"
    gets.chomp
  end

  def get_suggestion_from_user
    puts "What do you think will make our project better? Please drop a note in our suggestion box!"
    gets.chomp
  end
end

# def add_date_time
#   change_table 'MYTABLE' do |table|
#     add_column(:mytable, :my_field_name, :integer)
#   end
# end
