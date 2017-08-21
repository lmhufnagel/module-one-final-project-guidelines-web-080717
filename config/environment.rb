require 'bundler'
Bundler.require

gem 'pry-byebug'
gem 'activerecord'
gem 'rake'
gem 'sqlite3'


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
