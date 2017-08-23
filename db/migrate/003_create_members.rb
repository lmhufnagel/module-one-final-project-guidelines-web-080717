class CreateMembers < ActiveRecord::Migration
        def change
    create_table :members do |t|
      t.string :username
      t.text :first_name
      t.text :last_name


    end
  end
end
