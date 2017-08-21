require_relative 'config/environment'
require_relative 'models/member'
require_relative 'models/project'
require_relative 'models/suggestion_box'
require_relative 'models/cliinterface'

new_cli = CommandLineInterface.new
new_cli.valid_account

new_cli = CommandLineInterface.new
new_cli.welcome

new_cli = CommandLineInterface.new
new_cli.get_character_from_user

new_cli = CommandLineInterface.new
new_cli.add_date_time
