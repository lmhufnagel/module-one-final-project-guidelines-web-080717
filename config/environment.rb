require 'bundler'
Bundler.require



ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')


require_relative '../app/models/member'
require_relative '../app/models/project'
require_relative '../app/models/suggestion'


old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil
