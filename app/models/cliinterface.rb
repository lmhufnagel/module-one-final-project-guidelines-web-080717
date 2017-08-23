require 'pry'
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

  def which_category
    puts "Select the number of the category that interests you."
    list_categories
    input = gets.chomp.to_i
    # then based on input, outputs list of possible projects in that category
    category=@@categories[input]
  end


  def find_category_from_list
    c = which_category

    a = Project.where(category: c)

   a.each do |project|
      puts "#{project.id}: #{project.title}"

    end
  end

# cli.which_category
  # category = gets.chomp

  @@categories = {1 => "Local Businesses", 2 => "Community Projects", 3 => "Culture", 4 => "Health & Fitness", 5 => "Tech & Innovation", 6 => "Home"}

   def list_categories
     @@categories.each_with_index do |(key, value), index|
    puts "#{index+1}: #{value}"
   end

 end


  #  def list_projects


  def which_project
    puts "Which project are you interested in?"
    project = gets.chomp
    Project.find_by(title: project)
    # if Project.find_by(title: project)
    #   get_suggestion_from_user
    # else
  end

  def get_suggestion_from_user(name, project)
    puts "What do you think will make our project better? Please drop a note in our suggestion box!"
    sugg = gets.chomp

    Suggestion.find_or_create_by(suggestion: sugg, memeber_id: name.id, project_id: project.id)

  end
end
