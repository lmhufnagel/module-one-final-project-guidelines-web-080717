class CreateSBoxes < ActiveRecord::Migration
        def change
    create_table :s_boxes do |t|
      t.text :project_id
      t.integer :memeber_id
      t. datetime :left_review

    end
  end
end
