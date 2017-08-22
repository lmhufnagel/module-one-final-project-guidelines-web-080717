require 'bundler'
Bundler.require



ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')




# require_all 'models'
require_relative '../app/models/member.rb'
require_relative '../app/models/project'
require_relative '../app/models/suggestion'
