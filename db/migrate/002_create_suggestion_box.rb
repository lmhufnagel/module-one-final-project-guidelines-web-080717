class CreateSuggestionBox < ActiveRecord::Migration
        def change
    create_table :suggestion_boxes do |t|
        t.text :suggestion
      t.text :project_id
      t.integer :memeber_id
      t. datetime :left_review

    end
  end
end
