require_relative '../config/environment'
require_relative '../app/models/member'
require_relative '../app/models/project'
require_relative '../app/models/suggestion'
require_relative '../app/models/cli'
require_relative '../app/models/dataimporter'

# DataImporter.import_csv

new_cli = Cli.new
#new_cli.run

name = new_cli.valid_account

a = new_cli.find_category_from_list

#category = new_cli.which_category

project = new_cli.which_project

suggestion = new_cli.get_suggestion_from_user(name, project)

# Suggestion.create #(username:, project:, suggestion: )
#
# new_cli.add_date_time
