class CreateMembers < ActiveRecord::Migration
        def change
    create_table :members do |t|
      t.string :username
      t.text :backed_project
      t.integer :pledges_to_date
      t.datetime :active_since

    end
  end
end


