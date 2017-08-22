class Member < ActiveRecord::Base

    has_many :suggestions

    def find_member_by_username(name)
        "SELECT * FROM members WHERE username = name"
    end



end
