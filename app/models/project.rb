class Project < ActiveRecord::Base
has_many :suggestions
has_many :members, through: :suggestions
end
