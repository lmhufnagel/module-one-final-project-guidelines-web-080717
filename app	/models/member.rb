class Member < ActiveRecord::Base

    def find_member_by_username(name)
        "SELECT * FROM members WHERE username = name"
    end



end
