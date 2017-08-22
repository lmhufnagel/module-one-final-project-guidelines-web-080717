
class CommandLineInterface

  def valid_account
    puts "Please enter your username"
    name = gets.chomp

    if Member.find_by(username: name)
      welcome(name)
      Member.find_by(username: name)
    else
      puts "Bummer, looks like you're not a member yet! Lets change that! We, just created one for you from what you entered : )"
      Member.create(username: name)

    end



  end

  def welcome(name)
    puts "Hey there #{name}! We want to hear what you have to say!"
  end

  def which_project
    puts "Which project are you interested in?"
    project = gets.chomp
    Project.find_by(title: project)
  end

  def get_suggestion_from_user(name, project)
    puts "What do you think will make our project better? Please drop a note in our suggestion box!"
    sugg = gets.chomp
    
    Suggestion.find_or_create_by(suggestion: sugg, memeber_id: name.id, project_id: project.id)


  end
end

# def add_date_time
#   change_table 'MYTABLE' do |table|
#     add_column(:mytable, :my_field_name, :integer)
#   end
# end
