class CreateProjects < ActiveRecord::Migration
      def change
    create_table :projects do |t|
      t.integer :id
      t.text :title
      t.text :category
      t.integer :days_to_production

    end
  end
end
