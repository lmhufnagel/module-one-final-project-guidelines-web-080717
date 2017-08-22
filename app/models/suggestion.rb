class Suggestion < ActiveRecord::Base
belongs_to :project
belongs_to :member

#suggestion.create(username_id: , project_id:, suggestion: )
# def initializ()

  #INSERT INTO suggestions(suggestion) VALUES (new_cli.get_suggestion_from_user)
# end

end

# def set_timestamp
#
#   INSERT INTO left_review VALUES ()
#
# end
