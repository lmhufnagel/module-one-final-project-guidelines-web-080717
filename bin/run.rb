require_relative '../config/environment'
require_relative '../app/models/member'
require_relative '../app/models/project'
require_relative '../app/models/suggestion'
require_relative '../app/models/cliinterface'

new_cli = CommandLineInterface.new
#new_cli.run
binding.pry
new_cli.valid_account


# new_cli.welcome
#
# new_cli.get_character_from_user
#
# new_cli.add_date_time

