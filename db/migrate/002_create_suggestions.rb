class CreateSuggestions < ActiveRecord::Migration
        def change
    create_table :suggestions do |t|
      t.text :suggestion
      t.text :project_id
      t.integer :memeber_id

    end
  end
end
