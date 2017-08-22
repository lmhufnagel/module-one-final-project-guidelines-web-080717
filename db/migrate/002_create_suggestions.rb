class CreateSuggestions < ActiveRecord::Migration
        def change
    create_table :suggestions do |t|
      t.text :project_id
      t.integer :memeber_id
      t. datetime :left_review

    end
  end
end
