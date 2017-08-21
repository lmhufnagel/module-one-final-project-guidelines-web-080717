class CreateMembers < ActiveRecord::Migration
        def change
    create_table :members do |t|
      t.string :username
      t.text :aaa
      t.integer :costume_inventory


    end
  end
end
