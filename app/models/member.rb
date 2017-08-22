class Member < ActiveRecord::Base
  has_many :suggestions
  has_many :projects, through: :suggestions
end
